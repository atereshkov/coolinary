import SwiftUI

public struct DashboardView: View {
    public init() { }

    public var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                calendarView()
                caloriesView()
                tipView()
                cookSuggestionsView()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    @ViewBuilder
    func calendarView() -> some View {
        let days = [1, 2, 3, 4, 5, 6, 7]

        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(Array(days.enumerated()), id: \.element) { index, day in
                    VStack(alignment: .center, spacing: 4.0) {
                        Text("Day")
                            .font(.caption2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        Text("Date")
                            .font(.callout)
                            .foregroundStyle(.orange)
                    }
                    .padding(4.0)
                    .background(content: {

                    })
                    .contentShape(Rectangle())
                    .onAppear {

                    }
                    .onTapGesture {

                    }
                }
            }
        }
        .contentMargins(.horizontal, 24, for: .scrollContent)
    }

    @ViewBuilder
    func caloriesView() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "flame")
                Text("Calories 0 / 2000")
                Spacer()
                Button {
                    // Action to quickly add food (I ate flow)
                } label: {
                    Image(systemName: "plus.circle.fill")
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 12)
    }

    @ViewBuilder
    func tipView() -> some View {
        // 1. Hydration
        // 2. Some food tips (personalized)
        // 3. Etc
        HStack(spacing: 8) {
            Image(systemName: "lightbulb")
            Text("AI Tip...")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
        .padding(.bottom, 12)
    }

    @ViewBuilder
    func cookSuggestionsView() -> some View {
        // Should be based on the previously eatean food, shopping list, or just some random suggestions (based on the plan, goal).
        // TODO move to the Recipes flow?
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                Text("Cook Suggestions")
                Spacer()
                Text("View All")
            }
            .padding(.horizontal, 24)

            carouselView()
        }
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
        .contentMargins(.horizontal, 24, for: .scrollContent)
        .contentMargins(.top, 8, for: .scrollContent)
        .contentMargins(.bottom, 24, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    DashboardView()
}
