import SwiftUI

struct LegendaryInvestorsView: View {
    let investors: [LegendaryInvestor] = [
        .init(name: "Warren Buffett", photo: "buffett", bio: "Yatırım dünyasının en tanınmış isimlerinden biridir.", quotes: ["Kural 1: Asla para kaybetme. Kural 2: 1. kuralı asla unutma."]),
        .init(name: "Peter Lynch", photo: "lynch", bio: "Fidelity Magellan Fonu'nu yönettiği dönemde efsanevi getirilere imza atmıştır.", quotes: ["Ne bildiğinize yatırım yapın."])
    ]
    
    var body: some View {
        NavigationView {
            List(investors) { investor in
                NavigationLink(destination: LegendaryInvestorDetailView(investor: investor)) {
                    HStack {
                        Image(investor.photo)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(investor.name)
                                .font(AppFonts.title)
                            Text(investor.bio)
                                .font(AppFonts.caption)
                                .lineLimit(2)
                        }
                    }
                }
            }
            .navigationTitle("Efsanevi Yatırımcılar")
        }
    }
}

struct LegendaryInvestorsView_Previews: PreviewProvider {
    static var previews: some View {
        LegendaryInvestorsView()
    }
}