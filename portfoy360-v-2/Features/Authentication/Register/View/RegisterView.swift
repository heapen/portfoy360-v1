import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var surname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isRegistered = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Kayıt Ol")
                    .font(AppFonts.title)
                    .foregroundColor(AppColors.primaryText)

                TextField("Ad", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Soyad", text: $surname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("E-posta", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Şifre", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                NavigationLink(destination: SurveyView(), isActive: $isRegistered) {
                    EmptyView()
                }

                Button(action: {
                    // Kayıt olma işlemi
                    self.isRegistered = true
                }) {
                    Text("Kayıt Ol")
                        .font(AppFonts.button)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(AppColors.accent)
                        .cornerRadius(10)
                }
                .padding()

                Button(action: {
                    // Giriş yap ekranına geri dön
                }) {
                    Text("Zaten hesabın var mı? Giriş yap")
                        .font(AppFonts.body)
                        .foregroundColor(AppColors.accent)
                }

                Spacer()
            }
            .padding()
            .background(AppColors.background)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}