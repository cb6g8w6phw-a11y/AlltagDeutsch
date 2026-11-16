import Foundation

actor NewsService {
    func fetchGermanNews() async throws -> [NewsArticle] {
        // Placeholder - replace with real news API if needed
        return [
            NewsArticle(
                id: UUID(),
                title: "Willkommen bei AlltagDeutsch",
                summary: "Lerne Deutsch für den Alltag mit KI.",
                content: "Diese App hilft dir, praktische deutsche Phrasen für den Alltag zu lernen.",
                source: "AlltagDeutsch",
                publishedAt: Date(),
                url: nil
            )
        ]
    }
}
