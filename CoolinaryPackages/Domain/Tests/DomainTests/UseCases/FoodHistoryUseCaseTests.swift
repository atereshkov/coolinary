import Testing
@testable import Domain

// TODO: check the @unhecked Sendable annotation
final class FoodHistoryRepositoryMock: FoodHistoryRepositoryType, @unchecked Sendable {

    enum Call {
        case fetchFoodHistory
        case addFoodHistory
        case updateFoodHistory
        case deleteFoodHistory
    }

    private(set) var calls: [Call] = []

    func fetchFoodHistory() async throws -> [FoodHistoryEntity] {
        calls.append(.fetchFoodHistory)
        return []
    }

    func addFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }

    func updateFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }

    func deleteFoodHistory(_ foodHistory: Domain.FoodHistoryEntity) async throws {

    }
}

@Test func example() async throws {
    let repository = FoodHistoryRepositoryMock()
    let useCase = FoodHistoryUseCase(repository: repository)
    _ = try await useCase.fetchFoodHistory()
    #expect(repository.calls == [.fetchFoodHistory])
}
