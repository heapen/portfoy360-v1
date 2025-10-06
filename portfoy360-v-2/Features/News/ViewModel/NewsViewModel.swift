import Foundation

class NewsViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    func fetchNews() {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=YOUR_API_KEY") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(NewsResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.articles = response.articles
                    }
                } catch {
                    print("Error decoding news: \(error)")
                }
            }
        }.resume()
    }
}