import Foundation

struct FinancialLiteracyArticle: Codable, Identifiable {
    let id = UUID()
    let title: String
    let content: String
    let category: String
}