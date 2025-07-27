import SwiftUI

public struct FoodHistoryView: View {
    public init() { }

    public var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                testView()
            }
            .navigationTitle("I ate")
            .navigationBarTitleDisplayMode(.inline)
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
