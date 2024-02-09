//
//  AuthenticationPage.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct AuthenticationPage: View {

    @State var isLoginViewPresented = false
    @State var isSignUpViewPresented = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
           
            Button(action: {
                isSignUpViewPresented.toggle()
            }) {
                Text("Sign Up with Email")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .padding()
            .sheet(isPresented: $isSignUpViewPresented) {
                LogInView(isLoginViewPresented: $isLoginViewPresented)
            }
            Button(action: {
                isLoginViewPresented.toggle()
                //dismiss()
            }) {
                Text("Log In with Email")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
                
            }
            .padding()
            .sheet(isPresented: $isLoginViewPresented) {
                LogInView(isLoginViewPresented: $isLoginViewPresented)
            }
        }
        .background(Color(red: 227/255, green: 188/225, blue: 208/255))
        .padding(.vertical, 200)
    }
}

struct AuthenticationPage_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationPage()
    }
}
