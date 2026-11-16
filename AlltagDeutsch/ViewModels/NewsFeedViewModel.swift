import Foundation
import SwiftUI

@MainActor
class NewsFeedViewModel: ObservableObject {
    @Published var articles: [NewsArticle] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    private let newsService = NewsService()
    
    func loadNews() async {
        isLoading = true
        errorMessage = nil
        do {
            articles = try await newsService.fetchGermanNews()
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}
