import Foundation

struct Scenario: Identifiable, Codable {
    let id: UUID
    let title: String
    let description: String
    let difficulty: String
}
