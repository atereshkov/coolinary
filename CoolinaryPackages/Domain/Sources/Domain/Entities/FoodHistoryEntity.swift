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

    public init(
        uuid: String,
        date: Date,
        name: String? = nil,
        category: String? = nil,
        description: String? = nil,
        calories: Int,
        protein: Int? = nil,
        carbs: Int? = nil,
        fat: Int? = nil,
        fiber: Int? = nil
    ) {
        self.uuid = uuid
        self.date = date
        self.name = name
        self.category = category
        self.description = description
        self.calories = calories
        self.protein = protein
        self.carbs = carbs
        self.fat = fat
        self.fiber = fiber
    }
}
