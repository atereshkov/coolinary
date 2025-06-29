import SwiftUI
import DesignSystem

// TODO domain package

public struct HomeView: View {
    public init() { }

    public var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            carouselView()
            tipView()
            quickActionsView()
            yourFridgeView() // Tab?
            cookSuggestionsView()
        }
        // Home, Fridge, Recipes, I ate, Shopping List, Profile (Stats, Settings)
    }

    @ViewBuilder
    private func carouselView() -> some View {
        // TODO extract into design system? OR just separate home view?
        ScrollView(.horizontal, showsIndicators: false) {
            // TODO use spacing tokens
            HStack(spacing: 16) {
                ForEach(0..<10, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .shadow(radius: 5, x: 5, y: 5)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 120)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.8)
                                .scaleEffect(y: phase.isIdentity ? 1 : 0.9)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(24, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
    }

    @ViewBuilder
    func tipView() -> some View {
        // 1. Анализировать холодильник и советовать что нужно докупить.
        // 2. Советы по использованию продуктов (рецепты), которые уже есть в холодильнике.
        // 3.
        HStack(spacing: 8) {
            Image(systemName: "lightbulb")
            Text("Tip...")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
    }

    @ViewBuilder
    func quickActionsView() -> some View {
        // Scan Food (gallery, camera, etc) - after scan suggest to add to 'I ate'
        // Recipes (random, or suggestions based on fridge, or based on eaten food, or manual text requests using AI)
        // Shopping List (current list, ability to clear it, mark as bought, etc)
        // My Stats (daily calories small graph (circle), and button to open details)
        // 'I ate' - history of eaten food (with ability to add manually (e.g. from gallery, camera, or manually typed in))
        HStack(spacing: 16) {
            Button("Scan Food") {
                // TODO
            }
            Button("Recipes") { // Tab?
                // TODO
            }
            Button("Shopping List") { // Tab?
                // TODO
            }
            Button("My Stats") { // Tab?
                // TODO
            }
            Button("I ate") {
                // TODO
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 8)
    }

    @ViewBuilder
    func yourFridgeView() -> some View {
        //
    }

    @ViewBuilder
    func cookSuggestionsView() -> some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                Text("Cook Suggestions")
                Spacer()
                Text("View All")
            }
            // TODO
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
    }
}

#Preview {
    HomeView()
}
