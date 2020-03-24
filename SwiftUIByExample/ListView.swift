import SwiftUI

struct ListView: View {

    var numRows: Int

    var body: some View {
        List {
            ForEach(1 ... numRows, id: \.self) { row in
                if row % 2 == 0 {
                    return Text("Hello, World \(row)")
                } else {
                    return /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
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
