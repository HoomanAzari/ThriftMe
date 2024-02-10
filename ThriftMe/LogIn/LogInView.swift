//
//  LogInView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//
import SwiftUI
import FirebaseAuth

struct LogInView: View {
    var bgColour: Color = Color(red: 91/255, green: 189/255, blue: 130/255)
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showingAlert = false
    @State private var alertMessage: String?
    @State private var isAuthenticated = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColour.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Log")
                        Text("In")
                            .padding(.leading, -8)
                            .foregroundStyle(Color(red: 191/255, green: 255/255, blue: 218/255))
                    }
                    .font(.system(size: 80))
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding(.bottom, 50)
                    
                    VStack {
                        Text("Email")
                            .foregroundStyle(Color.white)
                            .bold()
                        TextField("Email", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 35)
                        
                        Text("Password")
                            .foregroundStyle(Color.white)
                            .bold()
                        SecureField("Password", text: $password)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 20)
                        
                        Button("Log In") {
                            loginUser(email: email, password: password)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .bold))
                        .background(Color.blue)
                        .cornerRadius(5)
                        .padding(.horizontal, 70)
                        .padding(.top, 20)
                        .alert("Login Error", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        } message: {
                            Text(alertMessage ?? "An unknown error occurred.")
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $isAuthenticated) {
                MainView()
            }
        }
        .navigationBarHidden(true)
    }
    
    func loginUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.alertMessage = error.localizedDescription
                    self.showingAlert = true
                } else {
                    print("User logged in successfully")
                    self.isAuthenticated = true // Assuming you'll navigate or update UI based on this
                }
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
