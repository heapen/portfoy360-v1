import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            Text("Giriş Yap")
                .font(AppFonts.title)
                .foregroundColor(AppColors.primaryText)

            TextField("E-posta", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Şifre", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                // Giriş yapma işlemi
            }) {
                Text("Giriş Yap")
                    .font(AppFonts.button)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(AppColors.accent)
                    .cornerRadius(10)
            }
            .padding()

            NavigationLink(destination: RegisterView()) {
                Text("Hesabın yok mu? Kayıt ol")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}