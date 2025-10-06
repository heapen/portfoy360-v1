import SwiftUI

struct MarketNewsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Piyasa Haberleri")
                .font(AppFonts.title)
                .foregroundColor(AppColors.primaryText)
            
            // Örnek Haberler
            NewsArticleRowView(title: "Teknoloji Hisselerinde Yükseliş Sürüyor", source: "Bloomberg", time: "2 saat önce")
            NewsArticleRowView(title: "Merkez Bankası Faiz Kararını Açıkladı", source: "Reuters", time: "4 saat önce")
            NewsArticleRowView(title: "Kripto Paralarda Dalgalı Seyir Devam Ediyor", source: "CoinDesk", time: "5 saat önce")
        }
        .padding()
        .background(AppColors.secondaryBackground)
        .cornerRadius(10)
    }
}

struct MarketNewsView_Previews: PreviewProvider {
    static var previews: some View {
        MarketNewsView()
    }
}