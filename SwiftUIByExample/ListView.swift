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

struct ListView_Previews: PreviewProvider {

    static var previews: some View {
        ListView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
