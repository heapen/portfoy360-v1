import SwiftUI

struct PortfolioAssetRowView: View {
    let assetName: String
    let assetSymbol: String
    let price: String
    let change: String
    let iconName: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.title)
                .frame(width: 40, height: 40)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)

            VStack(alignment: .leading) {
                Text(assetName)
                    .font(AppFonts.body)
                    .foregroundColor(AppColors.primaryText)
                Text(assetSymbol)
                    .font(AppFonts.caption)
                    .foregroundColor(AppColors.secondaryText)
            }

            Spacer()

            VStack(alignment: .trailing) {
                Text(price)
                    .font(AppFonts.body)
                    .foregroundColor(AppColors.primaryText)
                Text(change)
                    .font(AppFonts.caption)
                    .foregroundColor(change.hasPrefix("+") ? AppColors.green : AppColors.red)
            }
        }
        .padding(.vertical, 8)
    }
}

struct PortfolioAssetRowView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioAssetRowView(assetName: "Apple Inc.", assetSymbol: "AAPL", price: "₺175,28", change: "+1,25%", iconName: "applelogo")
    }
}