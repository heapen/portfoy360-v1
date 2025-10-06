import Foundation

struct LegendaryInvestor: Codable, Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let bio: String
    let quotes: [String]
}