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

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hello world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
            ForEach(rules, id: \.self) { rule in
                HStack {
                    Text(rule)
                    Spacer()
                }
                    .padding(16)
                    .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
