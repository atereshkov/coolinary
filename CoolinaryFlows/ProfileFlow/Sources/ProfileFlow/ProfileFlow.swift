import SwiftUI

public struct ProfileView: View {

    public init() { }

    public var body: some View {
        NavigationStack {
            testView()
                .navigationTitle("Me")
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
