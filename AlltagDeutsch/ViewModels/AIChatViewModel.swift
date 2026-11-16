import Foundation
import SwiftUI

@MainActor
class AIChatViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = []
    @Published var inputText: String = ""
    @Published var isLoading: Bool = false
    
    private let geminiService = GeminiService()
    private let speechPlayer = GermanSpeechPlayer()
    
    func sendMessage() async {
        let text = inputText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !text.isEmpty else { return }
        
        let userMessage = ChatMessage(id: UUID(), role: .user, content: text, timestamp: Date())
        messages.append(userMessage)
        inputText = ""
        isLoading = true
        
        do {
            let prompt = "Du bist ein hilfreicher Deutschlehrer. Antworte auf Deutsch und hilf dem Benutzer, die Sprache zu üben. Benutzer: \(text)"
            let response = try await geminiService.generateResponse(prompt: prompt)
            let assistantMessage = ChatMessage(id: UUID(), role: .assistant, content: response, timestamp: Date())
            messages.append(assistantMessage)
            speechPlayer.speak(response)
        } catch {
            let errorMessage = ChatMessage(id: UUID(), role: .assistant, content: "Fehler: \(error.localizedDescription)", timestamp: Date())
            messages.append(errorMessage)
        }
        isLoading = false
    }
}
