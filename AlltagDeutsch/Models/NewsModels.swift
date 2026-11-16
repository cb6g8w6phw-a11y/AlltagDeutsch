import Foundation

struct NewsArticle: Identifiable, Codable {
    let id: UUID
    let title: String
    let summary: String
    let content: String
    let source: String
    let publishedAt: Date
    let url: URL?
}
