import SwiftUI
import Domain

@MainActor
final public class FoodHistoryViewModel: ObservableObject {
    @Published var items: [FoodHistoryItem] = []

    private let useCase: FoodHistoryUseCaseType

    public init(useCase: FoodHistoryUseCaseType) {
        self.useCase = useCase
    }

    public func loadFoodHistory() async {
        do {
            items = try await useCase
                .fetchFoodHistory()
                .map { FoodHistoryItem(name: $0.name ?? "") }
        } catch {
            // Handle error
        }
    }
}
