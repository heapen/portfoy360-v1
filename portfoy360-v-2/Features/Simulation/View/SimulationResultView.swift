import SwiftUI
import Charts

struct SimulationResultView: View {
    // Örnek veri
    let results: [(year: Int, value: Double)] = [
        (2020, 10000),
        (2021, 15000),
        (2022, 13000),
        (2023, 18000),
        (2024, 22000)
    ]

    var body: some View {
        VStack {
            Text("Simülasyon Sonuçları")
                .font(AppFonts.title)
                .padding()

            Chart(results, id: \.year) { result in
                LineMark(
                    x: .value("Yıl", result.year),
                    y: .value("Değer", result.value)
                )
            }
            .frame(height: 300)
            .padding()

            VStack(alignment: .leading, spacing: 10) {
                Text("Başlangıç Yatırımı: ₺10.000")
                Text("Son Değer: ₺22.000")
                Text("Toplam Getiri: +₺12.000 (%120)")
                    .foregroundColor(AppColors.green)
            }
            .font(AppFonts.body)
            .padding()
            
            Spacer()
        }
        .navigationTitle("Sonuçlar")
    }
}

struct SimulationResultView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationResultView()
    }
}