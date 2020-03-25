import SwiftUI

struct PrimaryButton: View {

    var title: String
    var action: () -> Void

    var body: some View {
        Button(
            action: { self.action() },
            label: {
                Text(self.title)
                    .fontWeight(.semibold)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(Color.lightGray)
                    .cornerRadius(8)
            }
        )
    }
}
