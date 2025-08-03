import Foundation

public protocol FoodHistoryRepositoryType {
    func fetchFoodHistory() async throws -> [FoodHistoryEntity]

    func addFoodHistory(_ foodHistory: FoodHistoryEntity) async throws
    func updateFoodHistory(_ foodHistory: FoodHistoryEntity) async throws
    func deleteFoodHistory(_ foodHistory: FoodHistoryEntity) async throws
}
