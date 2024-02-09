//
//  SignUpView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

//
//  LogInView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct SignUpView: View {
    
    var bgColour : Color =  Color(red: 91/255, green: 189/255, blue: 130/255)
    @State var emailQuery: String = ""
    @State var passwordQuery: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Login")
                        .font(.largeTitle)
                        .padding(.horizontal)
                    Spacer()
                }
                VStack {
                    Text("Email")
                    TextField("", text: $emailQuery)
                        .textFieldStyle(.roundedBorder)
                    Text("Password")
                    PasswordTextFieldView("", text: $passwordQuery)
                    NavigationLink {
                        MainView()
                    } label: {
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
        }
        .background(bgColour)
        .navigationBarHidden(true) // Hide the navigation bar on this view
        Spacer()
    }
}



