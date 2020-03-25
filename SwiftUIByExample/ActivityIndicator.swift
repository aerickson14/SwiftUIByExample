import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    typealias Context = UIViewRepresentableContext<ActivityIndicator>

    @Binding var isAnimating: Bool

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .medium)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
