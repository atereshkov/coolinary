import Foundation

public protocol FoodHistoryUseCaseType: Sendable {
    func fetchFoodHistory() async throws -> [FoodHistoryEntity]
}

public final class FoodHistoryUseCase: FoodHistoryUseCaseType {

    private let repository: FoodHistoryRepositoryType

    public init(repository: FoodHistoryRepositoryType) {
        self.repository = repository
    }

    public func fetchFoodHistory() async throws -> [FoodHistoryEntity] {
        return try await repository.fetchFoodHistory()
    }
}
