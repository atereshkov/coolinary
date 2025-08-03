import SwiftUI
import Domain

final public class FoodHistoryViewModel: ObservableObject {
    @Published var items: [FoodHistoryItem] = []

    private let useCase: FoodHistoryUseCaseType

    public init(useCase: FoodHistoryUseCaseType) {
        self.useCase = useCase
    }

    @MainActor public func loadFoodHistory() async {
        do {
            items = try await useCase.fetchFoodHistory().map { food in
                FoodHistoryItem(name: food.name ?? "")
            }
        } catch {
            // Handle error
        }
    }
}
