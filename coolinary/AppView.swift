import SwiftUI
import ProfileFlow
import FoodHistoryFlow
import ShoppingListFlow
import RecipesFlow
import DashboardFlow

import HomeFlow
import OnboardingFlow

import Domain
import Data

struct AppView: View {

    var body: some View {
        HomeView(
            dashboardView: { makeDashboardView() },
            recipesView: { makeRecipesView() },
            foodHistoryView: { makeFoodHistoryView() },
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
        return AnyView(DashboardView())
    }

    private func makeRecipesView() -> AnyView {
        return AnyView(RecipesView())
    }

    private func makeShoppingListView() -> AnyView {
        return AnyView(ShoppingListView())
    }

    private func makeProfileView() -> AnyView {
        return AnyView(ProfileView())
    }
}

#Preview {
    AppView()
}
