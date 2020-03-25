import SwiftUI

class AddRuleViewModel: ObservableObject {

    @Binding var isPresented: Bool
    @Binding var rules: [String]
    @Published var newRule: String

    init(isPresented: Binding<Bool>, rules: Binding<[String]>) {
        self._isPresented = isPresented
        self._rules = rules
        self.newRule = ""
    }

    func submitNewRule() {
        rules.append(newRule)
        isPresented = false
    }
}
