//
//  SignUpView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

//
//  LogInView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//
import SwiftUI

struct SignUpView: View {
    var bgColour: Color = Color(red: 91/255, green: 189/255, blue: 130/255)
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    @State private var errorMessage: String?
    @State private var isAuthenticated = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColour.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Sign")
                        Text("Up")
                            .padding(.leading, -8)
                            .foregroundStyle(Color(red: 191/255, green: 255/255, blue: 218/255))
                    }
                    .font(.system(size: 80))
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding(.bottom, 50)
                    
                    VStack {
                        Text("Username")
                            .foregroundStyle(Color.white)
                            .bold()
                        TextField("", text: $username)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 35)
                        
                        Text("Email")
                            .foregroundStyle(Color.white)
                            .bold()
                        TextField("", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 35)
                        
                        Text("Password")
                            .foregroundStyle(Color.white)
                            .bold()
                        PasswordTextFieldView("", text: $password)
                            .padding(.bottom, 20)
                        
                        Button(action: signUp) {
                            Text("Join Now")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .bold))
                                .background(Color.blue)
                                .cornerRadius(5)
                        }
                        .padding(.horizontal, 70)
                        .padding(.top, 20)
                        .alert(isPresented: .constant(errorMessage != nil)) {
                            Alert(title: Text("Welcome to ThriftMe!"), message: Text(errorMessage ?? ""), dismissButton: .default(Text("OK")))
                        }
                    }
                    .padding(.horizontal, 50)
                }
            }
            // This NavigationLink will be activated when isAuthenticated becomes true
            NavigationLink(destination: MainView(), isActive: $isAuthenticated) { EmptyView() }
        }
        .navigationBarHidden(true)
    }
    
    func signUp() {
        guard let url = URL(string: "https://d256-142-116-228-25.ngrok-free.app/signUp") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let body: [String: Any] = ["username": username, "email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    self.errorMessage = "Failed to sign up: \(error.localizedDescription)"
                }
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 201 else {
                DispatchQueue.main.async {
                    self.errorMessage = "Failed to sign up due to server error."
                }
                return
            }
            
            DispatchQueue.main.async {
                self.errorMessage = "Signed up successfully!"
                self.isAuthenticated = true
            }
        }.resume()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
