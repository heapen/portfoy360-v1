import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Portföy Özeti
                PortfolioSummaryView()
                
                // İzleme Listesi
                WatchlistView()
                
                // Piyasa Haberleri
                HStack {
                    Text("Piyasa Haberleri")
                        .font(AppFonts.title)
                    Spacer()
                    NavigationLink(destination: NewsView()) {
                        Text("Tümünü Gör")
                            .font(AppFonts.caption)
                            .foregroundColor(AppColors.accent)
                    }
                }
                MarketNewsView()
            }
            .padding()
        }
        .background(AppColors.background)
        .navigationTitle("Ana Ekran")
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}