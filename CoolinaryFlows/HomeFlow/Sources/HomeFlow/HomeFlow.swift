import SwiftUI
import DashboardFlow
import DesignSystem

// TODO domain package

public struct HomeView: View {
    public init() { }

    public var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            DashboardView()
                .tabItem {
                    Label("Recipes", systemImage: "house")
                }
            DashboardView()
                .tabItem {
//                    Image(systemName: "plus.circle.fill")
//                        .font(.system(size: 24, weight: .bold))
                    Label("I ate", systemImage: "plus.circle.fill")
                }
            DashboardView()
                .tabItem {
                    Label("Shopping", systemImage: "house")
                }
            DashboardView()
                .tabItem {
                    Label("Me", systemImage: "house")
                }
        }
    }

    // Home, Recipes, I ate (+), Shopping List, Me

    // Home - Dashboard
    // Recipes (random, or suggestions based on fridge, or based on eaten food, or manual text requests using AI)
    // 'I ate' - history list + add food (e.g. from camera, gallery or manually typed in info)
    // Shopping List (current list, ability to clear it, mark as bought, etc)
    // Profile (Stats, Goal, Plan, Settings)
}

#Preview {
    HomeView()
}
