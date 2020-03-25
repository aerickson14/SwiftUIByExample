import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel = ContentViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            HStack {
                Text("Hello world!")
                    .font(.title)
                    .fontWeight(.bold)
                Image(systemName: "globe")
                    .font(.title)
                Spacer()
            }
            .padding(16)
            .background(Color.pastelGreen)
            ForEach(viewModel.rules, id: \.self) { rule in
                HStack {
                    Text(rule)
                    Spacer()
                }
                .padding(16)
                .background(Color.pastelRed)
            }
            if viewModel.isLoading {
                HStack {
                    Spacer()
                    ActivityIndicator(isAnimating: .constant(true))
                    Spacer()
                }
                .padding()
            }
            Spacer()
            HStack {
                Spacer()
                PrimaryButton(title: "Add Rule", action: { self.viewModel.showAddRule = true })
            }.padding()
        }
        .sheet(
            isPresented: $viewModel.showAddRule,
            content: {
                AddRuleView(isPresented: self.$viewModel.showAddRule, rules: self.$viewModel.rules)
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
