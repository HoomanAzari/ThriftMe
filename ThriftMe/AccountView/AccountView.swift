//
//  ProfileView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Account")
                .font(.title)
                .bold()
                .padding(.bottom, 25)
            VStack {
                Button {
                    // Some action
                } label: {
                    HStack {
                        Image(systemName: "person")
                            .resizable()
                            .foregroundColor(.black)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 25, height: 25)
                        VStack(alignment: .leading) {
                            Text("Profile")
                                .font(.system(size: 22))
                                .foregroundColor(.black)
                                .bold()
                            Text("Name, Username, Email, Password")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                        }.padding(.leading, 10)
                        Spacer()
                        Image(systemName: "arrow.right")
                            .resizable()
                            .foregroundColor(.gray)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 15, height: 15)
                    }
                }
                Divider()
            }
            Spacer()
        }.padding(.all)
    }
}

#Preview {
    AccountView()
}
