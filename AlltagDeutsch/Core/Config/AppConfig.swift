import Foundation

enum AppConfig {
    static var geminiAPIKey: String {
        Bundle.main.object(forInfoDictionaryKey: "GEMINI_API_KEY") as? String ?? ""
    }
}
