import Foundation
import Domain

public final class FoodHistoryRepository: FoodHistoryRepositoryType {

    public init() {}

    public func fetchFoodHistory() async throws -> [Domain.FoodHistoryEntity] {
        return [
            FoodHistoryEntity(uuid: UUID().uuidString, date: Date(), name: "Sample Food", calories: 200),
            FoodHistoryEntity(uuid: UUID().uuidString, date: Date(), name: "Some Food", calories: 500),
        ]
    }
    
    public func addFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }
    
    public func updateFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }
    
    public func deleteFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }

}
