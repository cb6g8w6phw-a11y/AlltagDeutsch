import SwiftUI

struct AppRootView: View {
    var body: some View {
        TabView {
            AIChatView()
                .tabItem {
                    Label("Chat", systemImage: "bubble.left.and.bubble.right")
                }
            NewsFeedView()
                .tabItem {
                    Label("Nachrichten", systemImage: "newspaper")
                }
        }
    }
}
