import SwiftUI

struct AddRuleView: View {

    @Binding var isPresented: Bool
    @Binding var rules: [String]
    @State private var newRule: String

    init(isPresented: Binding<Bool>, rules: Binding<[String]>) {
        self._isPresented = isPresented
        self._rules = rules
        self._newRule = State(initialValue: "")
    }

    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 16) {
                Text("New Rule:")
                TextField("Enter a rule", text: $newRule)
                Spacer()
                HStack {
                    Spacer()
                    PrimaryButton(title: "Submit", action: {
                        self.submitNewRule()
                    })
                }
            }
        }
    }

    func submitNewRule() {
        rules.append(newRule)
        isPresented = false
    }
}

struct AddRuleView_Previews: PreviewProvider {
    static var previews: some View {
        AddRuleView(isPresented: .constant(true), rules: .constant([]))
    }
}
