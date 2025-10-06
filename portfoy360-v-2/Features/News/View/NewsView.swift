import SwiftUI

struct NewsView: View {
    @StateObject private var viewModel = NewsViewModel()
    @State private var selectedArticle: Article?

    var body: some View {
        NavigationView {
            List(viewModel.articles) { article in
                NewsArticleRowView(title: article.title, source: "News Source", time: article.publishedAt)
                    .onTapGesture {
                        self.selectedArticle = article
                    }
            }
            .navigationTitle("Yatırım Haberleri")
            .onAppear {
                viewModel.fetchNews()
            }
            .sheet(item: $selectedArticle) { article in
                SafariView(url: URL(string: article.url)!)
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}