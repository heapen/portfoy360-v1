import SwiftUI

struct LoginView: View {
    @Binding var isAuthenticated: Bool
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color(AppColors.background).edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    Spacer()

                    Image(systemName: "chart.pie.fill")
                        .font(.system(size: 80))
                        .foregroundColor(Color(AppColors.primaryText))

                    Text("Portfoy360")
                        .font(AppFonts.title)
                        .foregroundColor(Color(AppColors.primaryText))

                    VStack(spacing: 15) {
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
                    }
                    .padding(.horizontal)

                    Button(action: {
                        // Giriş işlemleri burada yapılacak
                        isAuthenticated = true
                    }) {
                        Text("Giriş Yap")
                    }
                    .buttonStyle(PrimaryButtonStyle())
                    .padding(.horizontal)

                    Spacer()

                    HStack {
                        Text("Hesabın yok mu?")
                            .foregroundColor(Color(AppColors.secondaryText))
                        NavigationLink(destination: RegisterView(isAuthenticated: $isAuthenticated)) {
                            Text("Kayıt Ol")
                                .foregroundColor(Color.accentColor)
                        }
                    }
                    .padding(.bottom)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isAuthenticated: .constant(false))
    }
}