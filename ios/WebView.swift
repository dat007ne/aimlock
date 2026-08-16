import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()

        let webView = WKWebView(
            frame: .zero,
            configuration: configuration
        )

        webView.backgroundColor = .black
        webView.isOpaque = false

        let root = Bundle.main.resourceURL!
        let html = root.appendingPathComponent("index.html")

        webView.loadFileURL(
            html,
            allowingReadAccessTo: root
        )

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
    }
}
