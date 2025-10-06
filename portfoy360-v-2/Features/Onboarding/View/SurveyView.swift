import SwiftUI

struct SurveyView: View {
    @StateObject private var viewModel = SurveyViewModel()
    @State private var currentQuestionIndex = 0
    @State private var totalScore = 0
    @State private var isSurveyFinished = false

    var body: some View {
        VStack {
            if let survey = viewModel.survey {
                if currentQuestionIndex < survey.questions.count {
                    let question = survey.questions[currentQuestionIndex]
                    Text(question.text)
                        .font(AppFonts.title)
                        .padding()

                    ForEach(question.answers, id: \.self) { answer in
                        Button(action: {
                            totalScore += answer.score
                            if currentQuestionIndex < survey.questions.count - 1 {
                                currentQuestionIndex += 1
                            } else {
                                isSurveyFinished = true
                            }
                        }) {
                            Text(answer.text)
                                .font(AppFonts.body)
                                .padding()
                                .background(AppColors.secondaryBackground)
                                .cornerRadius(10)
                        }
                        .padding(.bottom, 10)
                    }
                } else {
                    Text("Anket tamamlandı! Toplam Puan: \(totalScore)")
                        .font(AppFonts.title)
                    NavigationLink(destination: DashboardView(), isActive: $isSurveyFinished) { EmptyView() }
                }
            } else {
                Text("Anket yükleniyor...")
            }
        }
        .padding()
        .background(AppColors.background)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}