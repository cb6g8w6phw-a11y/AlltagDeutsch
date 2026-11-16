import SwiftUI

struct NewsDetailView: View {
    let article: NewsArticle
    @StateObject private var speechPlayer = GermanSpeechPlayer()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(article.title)
                    .font(.largeTitle)
                    .bold()
                
                Text(article.source)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Button("Anhören") {
                    speechPlayer.speak(article.content)
                }
                .buttonStyle(.borderedProminent)
                
                Text(article.content)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Artikel")
        .navigationBarTitleDisplayMode(.inline)
    }
}
