//
//  LogInView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct LogInView: View {
    
    @State var emailQuery: String = ""
    @State var passwordQuery: String = ""
    @Binding var isLoginViewPresented: Bool
    @Environment(\.dismiss) var dismiss
 
    var body: some View {
        VStack {
            HStack{
                Text("Login")
                    .font(.largeTitle)
                    .padding(.horizontal)
                Spacer()
            }
            VStack{
                Text("Email")
                TextField("", text: $emailQuery)
                    .textFieldStyle(.roundedBorder)
                Text("Password")
                PasswordTextFieldView("", text: $passwordQuery)
                Button(action: {
                    isLoginViewPresented = false
                }) {
                    Text("Next")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                    
                }
                .padding()
            }
            .padding(.horizontal)
        }
        Spacer()
    }
}



