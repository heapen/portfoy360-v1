import SwiftUI

struct FinancialLiteracyDetailView: View {
    let article: FinancialLiteracyArticle

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(article.title)
                    .font(AppFonts.title)
                
                Text(article.content)
                    .font(AppFonts.body)
            }
            .padding()
        }
        .navigationTitle(article.title)
        .background(AppColors.background)
    }
}

struct FinancialLiteracyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FinancialLiteracyDetailView(article: .init(title: "Temel Analiz Nedir?", content: "Temel analiz, bir şirketin finansal sağlığını...", category: "Yatırım Stratejileri"))
    }
}