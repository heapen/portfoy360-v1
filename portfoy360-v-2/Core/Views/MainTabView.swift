import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Ana Ekran", systemImage: "house.fill")
                }
            
            SimulationView()
                .tabItem {
                    Label("Simülasyon", systemImage: "chart.pie.fill")
                }
            
            NewsView()
                .tabItem {
                    Label("Haberler", systemImage: "newspaper.fill")
                }
            
            LegendaryInvestorsView()
                .tabItem {
                    Label("Yatırımcılar", systemImage: "person.fill")
                }
            
            FinancialLiteracyView()
                .tabItem {
                    Label("Okuryazarlık", systemImage: "book.fill")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}