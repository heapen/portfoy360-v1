import Foundation

class SurveyViewModel: ObservableObject {
    @Published var survey: Survey?

    init() {
        loadSurvey()
    }

    func loadSurvey() {
        if let url = Bundle.main.url(forResource: "Survey", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                survey = try decoder.decode(Survey.self, from: data)
            } catch {
                print("Error loading survey: \(error)")
            }
        }
    }
}