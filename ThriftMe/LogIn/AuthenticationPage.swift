//
//  AuthenticationPage.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct AuthenticationPage: View {
    @Environment(\.dismiss) var dismiss
    var buttonAction: () -> Void             //Function data type
    var body: some View {
        ZStack{
            @State var isSignInViewPresented = false
            @State var isLogInViewPresented = false
            VStack {
                Button("Sign in with Email") {
                    isSignInViewPresented.toggle()
                }
                .sheet(isPresented: $isSignInViewPresented) {
                    LogInView()
                }
                .padding()
                
                Button("Log in") {
                    isLogInViewPresented.toggle()
                }
                .sheet(isPresented: $isLogInViewPresented) {
                    LogInView()
                }
                .padding()
            }
        }
    }
}

