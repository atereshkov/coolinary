import Foundation
import Domain

public final class FoodHistoryRepository: FoodHistoryRepositoryType {

    public init() {}

    public func fetchFoodHistory() async throws -> [Domain.FoodHistoryEntity] {
        return []
    }
    
    public func addFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }
    
    public func updateFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }
    
    public func deleteFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }

}
