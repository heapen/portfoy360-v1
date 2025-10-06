import SwiftUI

struct LegendaryInvestorDetailView: View {
    let investor: LegendaryInvestor

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Image(investor.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(AppColors.accent, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text(investor.name)
                    .font(AppFonts.title)
                
                Text(investor.bio)
                    .font(AppFonts.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("İlham Veren Sözler")
                        .font(AppFonts.subtitle)
                    ForEach(investor.quotes, id: \.self) { quote in
                        Text("\"\(quote)\"")
                            .font(AppFonts.body)
                            .italic()
                            .padding(.leading)
                    }
                }
                .padding()
                .background(AppColors.secondaryBackground)
                .cornerRadius(10)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(investor.name)
        .background(AppColors.background)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct LegendaryInvestorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LegendaryInvestorDetailView(investor: .init(name: "Warren Buffett", photo: "buffett", bio: "Yatırım dünyasının en tanınmış isimlerinden biridir.", quotes: ["Kural 1: Asla para kaybetme. Kural 2: 1. kuralı asla unutma."]))
    }
}