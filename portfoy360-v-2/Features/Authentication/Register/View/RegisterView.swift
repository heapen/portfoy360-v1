import SwiftUI

struct RegisterView: View {
    @Binding var isAuthenticated: Bool
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color(AppColors.background).edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Spacer()

                Text("Hesap Oluştur")
                    .font(AppFonts.title)
                    .foregroundColor(Color(AppColors.primaryText))

                VStack(spacing: 15) {
                    TextField("", text: $name)
                        .modifier(PlaceholderStyle(showPlaceHolder: name.isEmpty, placeholder: "Ad Soyad"))
                        .padding(12)
                        .background(Color(AppColors.secondaryBackground))
                        .cornerRadius(10)

                    TextField("", text: $email)
                        .modifier(PlaceholderStyle(showPlaceHolder: email.isEmpty, placeholder: "E-posta"))
                        .padding(12)
                        .background(Color(AppColors.secondaryBackground))
                        .cornerRadius(10)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)

                    SecureField("", text: $password)
                        .modifier(PlaceholderStyle(showPlaceHolder: password.isEmpty, placeholder: "Şifre"))
                        .padding(12)
                        .background(Color(AppColors.secondaryBackground))
                        .cornerRadius(10)

                    SecureField("", text: $confirmPassword)
                        .modifier(PlaceholderStyle(showPlaceHolder: confirmPassword.isEmpty, placeholder: "Şifre Tekrar"))
                        .padding(12)
                        .background(Color(AppColors.secondaryBackground))
                        .cornerRadius(10)
                }
                .padding(.horizontal)

                Button(action: {
                    // Kayıt işlemleri burada yapılacak
                    isAuthenticated = true
                }) {
                    Text("Kayıt Ol")
                }
                .buttonStyle(PrimaryButtonStyle())
                .padding(.horizontal)

                Spacer()

                HStack {
                    Text("Zaten bir hesabın var mı?")
                        .foregroundColor(Color(AppColors.secondaryText))
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Giriş Yap")
                            .foregroundColor(Color.accentColor)
                    }
                }
                .padding(.bottom)
            }
        }
        .navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(isAuthenticated: .constant(false))
    }
}