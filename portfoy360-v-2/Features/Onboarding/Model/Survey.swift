import Foundation

struct Survey: Codable {
    let questions: [Question]
}

struct Question: Codable, Identifiable {
    let id: Int
    let text: String
    let answers: [Answer]
}

struct Answer: Codable, Hashable {
    let text: String
    let score: Int
}