import SwiftUI

@main
struct CoolinaryApp: App {
    var body: some Scene {
        WindowGroup {
            AppView()
        }
    }
}

// App Core (App-Wide Services, App Configs, etc)
// * Platform (Platform specific things, e.g., push, biometrics, etc)
// Design System (Assets, Configs, etc)

// Presentation (Feature Flows: Views and View Models). Uses UI Models? Converts UI Models from Entities?

// Domain (Use Cases, Entities). Returns Entities

// Data (Repositories -> Network or Storage). Returns Entities (converts from DTO/DBO)?
// - API/Network (API, Services, etc). Returns DTO
// - Storage (Core Data, User Defaults, etc). Returns DBO

// Presentation —> Domain <— Data
