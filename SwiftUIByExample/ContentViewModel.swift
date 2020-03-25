import SwiftUI

class ContentViewModel: ObservableObject {

    @Published var rules: [String] = [
        "Don't forget to wash your hands",
        "Don't touch your face",
        "Practice physical distancing",
        "No international travel",
        "Work from home",
        "Self quarantine if you're experiencing symptoms"
    ]
    @Published var showAddRule: Bool = false
}
