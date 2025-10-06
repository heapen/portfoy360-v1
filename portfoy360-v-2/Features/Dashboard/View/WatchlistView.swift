import SwiftUI

struct WatchlistView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("İzleme Listesi")
                .font(AppFonts.title)
                .foregroundColor(AppColors.primaryText)
            
            // Örnek Varlıklar
            PortfolioAssetRowView(assetName: "Apple Inc.", assetSymbol: "AAPL", price: "₺175,28", change: "+1,25%", iconName: "applelogo")
            PortfolioAssetRowView(assetName: "Bitcoin", assetSymbol: "BTC", price: "₺30.123,45", change: "-2,34%", iconName: "bitcoinsign.circle")
            PortfolioAssetRowView(assetName: "Tesla Inc.", assetSymbol: "TSLA", price: "₺260,02", change: "+5,67%", iconName: "car")
        }
        .padding()
        .background(AppColors.secondaryBackground)
        .cornerRadius(10)
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}