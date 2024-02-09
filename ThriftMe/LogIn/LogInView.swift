//
//  LogInView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct LogInView: View {
    
    var bgColour: Color = Color(red: 91/255, green: 189/255, blue: 130/255)
    @State var emailQuery: String = ""
    @State var passwordQuery: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColour.edgesIgnoringSafeArea(.all) // Set the background color for the entire screen
                
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
                        TextField("", text: $emailQuery)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 35)
                        
                        Text("Password")
                            .foregroundStyle(Color.white)
                            .bold()
                        PasswordTextFieldView("", text: $passwordQuery)
                            .padding(.bottom, 20)
                        
                        NavigationLink {
                            MainView()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(Color.white)
                                    .frame(height: 40)
                                Text("Join Now")
                                    .foregroundStyle(Color(red: 17/255, green: 134/255, blue: 119/255))
                            }
                        }
                        .padding(.horizontal, 70)
                        .padding()
                    }
                    .padding(.horizontal, 50)
                }
            }
        }
        .navigationBarHidden(true) // Hide the navigation bar on this view
    }
}


struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
