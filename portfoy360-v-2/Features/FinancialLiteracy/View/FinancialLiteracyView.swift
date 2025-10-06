import SwiftUI

struct FinancialLiteracyView: View {
    let articles: [FinancialLiteracyArticle] = [
        .init(title: "Temel Analiz Nedir?", content: "Temel analiz, bir şirketin finansal sağlığını...", category: "Yatırım Stratejileri"),
        .init(title: "Teknik Analiz ve Grafikler", content: "Teknik analiz, geçmiş fiyat hareketlerini...", category: "Yatırım Stratejileri"),
        .init(title: "Portföy Çeşitlendirmesi", content: "Yumurtaları aynı sepete koymamak...", category: "Risk Yönetimi")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(articles) { article in
                    NavigationLink(destination: FinancialLiteracyDetailView(article: article)) {
                        VStack(alignment: .leading) {
                            Text(article.title)
                                .font(AppFonts.body)
                            Text(article.category)
                                .font(AppFonts.caption)
                                .foregroundColor(AppColors.secondaryText)
                        }
                    }
                }
            }
            .navigationTitle("Finansal Okuryazarlık")
        }
    }
}

struct FinancialLiteracyView_Previews: PreviewProvider {
    static var previews: some View {
        FinancialLiteracyView()
    }
}