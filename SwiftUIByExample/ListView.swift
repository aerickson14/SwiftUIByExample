import SwiftUI

struct ListView: View {

    var body: some View {
        List {
            ForEach(1 ... 5, id: \.self) { _ in
                Text("Hello, World")
            }
        }
    }
}
