import SwiftUI

struct FoodHistoryItem: Identifiable {
    let id = UUID()
    var name: String
}

public struct FoodHistoryView: View {

    @ObservedObject var viewModel: FoodHistoryViewModel

    public init(viewModel: FoodHistoryViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Today (2150 cal)")) {
                    ForEach(viewModel.items) { item in
                        Text(item.name)
                    }
                }

                Section(header: Text("Yesterday (1670 cal)")) {
                    ForEach(viewModel.items) { item in
                        Text(item.name)
                    }
                }

                Section(header: Text("20/07/2025 (2560 cal)")) {
                    ForEach(viewModel.items) { item in
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
        .task {
            await viewModel.loadFoodHistory()
        }
    }
}
