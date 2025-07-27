import SwiftUI
import DesignSystem

// Skippable flow ('close' button top right/left corner).
// Each separate step should also be skippable.
// Privacy policy, terms of service, etc at the end or at start.
// Personalized plan generation at the end.

// Should be fast and simple. No longer than ~5-6 steps.
// User can add more info later in the settings or profile section.

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
