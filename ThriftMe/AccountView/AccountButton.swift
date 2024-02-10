//
//  AccountButton.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct AccountButton: View {
    var iconName: String
    var title: String
    var description: String
    var body: some View {
        Button {
            // Some action
        } label: {
            HStack {
                Image(systemName: iconName)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 25, height: 25)
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 22))
                        .foregroundColor(.black)
                        .bold()
                    Text(description)
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
    }
}

#Preview {
    AccountButton(iconName: "person", title: "Profile", description: "Username, Email, Password")
}
