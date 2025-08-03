import SwiftUI

import HomeFlow
import OnboardingFlow

import FoodHistoryFlow
import Domain
import Data

struct AppView: View {

    var body: some View {
        HomeView(
            foodHistoryView: { makeFoodHistoryView() },
            dashboardView: { makeDashboardView() },
            recipesView: { makeRecipesView() },
            shoppingListView: { makeShoppingListView() },
            profileView: { makeProfileView() }
        )
    }

    private func makeFoodHistoryView() -> AnyView {
        let repository = FoodHistoryRepository()
        let useCase = FoodHistoryUseCase(repository: repository)
        let viewModel = FoodHistoryViewModel(useCase: useCase)
        return AnyView(FoodHistoryView(viewModel: viewModel))
    }

    private func makeDashboardView() -> AnyView {
        return AnyView(EmptyView())
    }

    private func makeRecipesView() -> AnyView {
        return AnyView(EmptyView())
    }

    private func makeShoppingListView() -> AnyView {
        return AnyView(EmptyView())
    }

    private func makeProfileView() -> AnyView {
        return AnyView(EmptyView())
    }
}

#Preview {
    AppView()
}
