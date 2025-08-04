import SwiftUI

import DesignSystem

public struct HomeView: View {

    let dashboardView: () -> AnyView
    let recipesView: () -> AnyView
    let foodHistoryView: () -> AnyView
    let shoppingListView: () -> AnyView
    let profileView: () -> AnyView

    public init(
        foodHistoryView: @escaping () -> AnyView,
        dashboardView: @escaping () -> AnyView,
        recipesView: @escaping () -> AnyView,
        shoppingListView: @escaping () -> AnyView,
        profileView: @escaping () -> AnyView
    ) {
        self.foodHistoryView = foodHistoryView
        self.dashboardView = dashboardView
        self.recipesView = recipesView
        self.shoppingListView = shoppingListView
        self.profileView = profileView
    }

    public var body: some View {
        TabView {
            dashboardView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            recipesView()
                .tabItem {
                    Label("Recipes", systemImage: "book.fill")
                }
            foodHistoryView()
                .tabItem {
                    Label("I ate", systemImage: "fork.knife.circle.fill")
                }
            shoppingListView()
                .tabItem {
                    Label("Shopping", systemImage: "cart.fill")
                }
            profileView()
                .tabItem {
                    Label("Me", systemImage: "person.crop.circle.fill")
                }
        }
    }

    // Home, Recipes, I ate (+), Shopping List, Me

    // Home - Dashboard
    // Recipes (random, or suggestions based on fridge, or based on eaten food, or manual text requests using AI), search
    // 'I ate' - history list by dates + add food (e.g. from camera, gallery or manually typed in info)
    // Shopping List (current list, search, ability to clear it, mark as bought, etc)
    // Profile (Stats, Goal, Plan, Settings)
}

#Preview {
    // HomeView(foodHistoryView: , dashboardView: <#() -> AnyView#>, recipesView: <#() -> AnyView#>, shoppingListView: <#() -> AnyView#>, profileView: <#() -> AnyView#>)
}
