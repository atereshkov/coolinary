import Foundation

public struct FoodHistoryEntity: Hashable, Sendable {
    let uuid: String
    let date: Date
    public let name: String?
    let category: String?
    let description: String?
    let calories: Int
    let protein: Int?
    let carbs: Int?
    let fat: Int?
    let fiber: Int?
}
