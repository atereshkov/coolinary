import SwiftUI
import DesignSystem

public struct OnboardingView: View {

    @State private var animate = false

    public init() { }

    public var body: some View {
        ZStack {
            DesignSystemAssets()
                .onboardingBackground
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            Text("Coolinary") // TODO localization
                .font(.largeTitle)
                .fontWeight(.bold)
                .fontDesign(.rounded) // or monospaced?
                .scaleEffect(animate ? 1.0 : 0.5)
                .opacity(animate ? 1.0 : 0.0)
                .onAppear {
                    withAnimation(.interpolatingSpring(stiffness: 100, damping: 10)) {
                        animate = true
                    }
                }
        }
    }
}

#Preview {
    OnboardingView()
}
