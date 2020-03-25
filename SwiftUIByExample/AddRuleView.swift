import SwiftUI

struct AddRuleView: View {

    @ObservedObject var viewModel: AddRuleViewModel
    init(isPresented: Binding<Bool>, rules: Binding<[String]>) {
        self.viewModel = AddRuleViewModel(
            isPresented: isPresented,
            rules: rules
        )
    }

    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 16) {
                Text("New Rule:")
                TextField("Enter a rule", text: $viewModel.newRule)
                Spacer()
                HStack {
                    Spacer()
                    PrimaryButton(title: "Submit", action: {
                        self.viewModel.submitNewRule()
                    })
                }
            }
        }
    }
}

struct AddRuleView_Previews: PreviewProvider {
    static var previews: some View {
        AddRuleView(isPresented: .constant(true), rules: .constant([]))
    }
}
