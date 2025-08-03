import SwiftUI

struct FoodHistoryItem: Identifiable {
    let id = UUID()
    let name: String
}

public struct FoodHistoryView: View {

    var items: [FoodHistoryItem] = [
        FoodHistoryItem(name: "Burger"),
        FoodHistoryItem(name: "Pizza"),
        FoodHistoryItem(name: "Aperol Spritz"),
        FoodHistoryItem(name: "Pierogi")
    ]

    public init() { }

    public var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Today (2156 cal)")) {
                    ForEach(items) { item in
                        Text(item.name)
                    }
                }

                Section(header: Text("Yesterday (1670 cal)")) {
                    ForEach(items) { item in
                        Text(item.name)
                    }
                }

                Section(header: Text("20/07/2025 (2560 cal)")) {
                    ForEach(items) { item in
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("I ate")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // Action to add food item
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }

    @ViewBuilder
    func testView() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Test")
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 12)
    }
}
