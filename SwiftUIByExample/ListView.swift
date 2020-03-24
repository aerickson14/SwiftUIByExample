import SwiftUI

struct ListView: View {

    var numRows: Int

    var body: some View {
        List {
            ForEach(1 ... numRows, id: \.self) { row -> AnyView in
                if row % 2 == 0 {
                    return Text("Hello, World \(row)").typeErased
                } else {
                    return EmptyView().typeErased
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            ListView(numRows: 5)
                .previewLayout(.fixed(width: 400, height: 300))
            ListView(numRows: 10)
                .previewLayout(.fixed(width: 400, height: 300))
        }
    }
}

extension View {
    var typeErased: AnyView {
        AnyView(self)
    }
}
