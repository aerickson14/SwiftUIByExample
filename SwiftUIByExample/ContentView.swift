import SwiftUI

struct ContentView: View {

    var rules: [String] = [
        "Don't forget to wash your hands",
        "Don't touch your face",
        "Practice physical distancing",
        "No international travel",
        "Work from home",
        "Self quarantine if you're experiencing symptoms"
    ]
    @State private var showAddRule: Bool = false

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
            ForEach(rules, id: \.self) { rule in
                HStack {
                    Text(rule)
                    Spacer()
                }
                .padding(16)
                .background(Color.pastelRed)
            }
            Spacer()
            HStack {
                Spacer()
                Button(
                    action: {},
                    label: {
                        Text("Add Rule")
                            .fontWeight(.semibold)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(Color.lightGray)
                            .cornerRadius(8)
                    }
                )
            }.padding()
        }
        .sheet(
            isPresented: $showAddRule,
            content: {
                AddRuleView()
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
