import SwiftUI

struct PortfolioSummaryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Portföy Değeri")
                .font(AppFonts.caption)
                .foregroundColor(AppColors.secondaryText)
            
            Text("₺12.345,67")
                .font(AppFonts.title)
                .foregroundColor(AppColors.primaryText)
            
            HStack {
                Text("+₺123,45 (%1,01)")
                    .foregroundColor(AppColors.green)
                Spacer()
                Text("Bugün")
                    .foregroundColor(AppColors.secondaryText)
            }
            .font(AppFonts.body)
        }
        .padding()
        .background(AppColors.secondaryBackground)
        .cornerRadius(10)
    }
}

struct PortfolioSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioSummaryView()
    }
}