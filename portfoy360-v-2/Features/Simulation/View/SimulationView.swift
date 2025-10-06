import SwiftUI

struct SimulationView: View {
    @State private var initialInvestment = ""
    @State private var selectedAsset = 0
    @State private var simulationPeriod = 1
    
    let assets = ["Apple (AAPL)", "Bitcoin (BTC)", "Tesla (TSLA)"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Simülasyon Parametreleri")) {
                    TextField("Başlangıç Yatırımı (₺)", text: $initialInvestment)
                        .keyboardType(.decimalPad)
                    
                    Picker("Yatırım Varlığı", selection: $selectedAsset) {
                        ForEach(0..<assets.count, id: \.self) { index in
                            Text(self.assets[index])
                        }
                    }
                    
                    Stepper(value: $simulationPeriod, in: 1...10) {
                        Text("Simülasyon Süresi: \(simulationPeriod) Yıl")
                    }
                }
                
                Section {
                    NavigationLink(destination: SimulationResultView()) {
                        Text("Simülasyonu Başlat")
                            .font(AppFonts.button)
                    }
                }
            }
            .navigationTitle("Yatırım Simülasyonu")
        }
    }
}

struct SimulationView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationView()
    }
}