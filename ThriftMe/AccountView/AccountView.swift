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
            ScrollView{
                VStack {
                    AccountButton(iconName: "person", title: "Profile", description: "Username, Email, Password")
                    Divider()
                    AccountButton(iconName: "mappin.and.ellipse", title: "Location", description: "Country, City, and Currency")
                    Divider()
                    AccountButton(iconName: "list.bullet", title: "My Listings", description: "Active sales")
                    Divider()
                    AccountButton(iconName: "heart", title: "My Favorites", description: "Items you've saved")
                    Divider()
                    AccountButton(iconName: "gearshape", title: "Settings", description: "Security and notifications")
                    Divider()
                    Button {
                        // Some action
                    } label: {
                        HStack {
                            Image(systemName: "rectangle.portrait.and.arrow.forward")
                                .resizable()
                                .foregroundColor(.black)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 25, height: 25)
                                .padding(.leading, 5)
                            VStack(alignment: .leading) {
                                Text("Logout")
                                    .font(.system(size: 22))
                                    .foregroundColor(.black)
                                    .bold()
                            }.padding(.leading, 10)
                            Spacer()
                            Image(systemName: "arrow.right")
                                .resizable()
                                .foregroundColor(.gray)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 15, height: 15)
                        }.frame(height: 45)
                    }
                }
            }
            Spacer()
        }.padding(.all)
    }
}

#Preview {
    AccountView()
}
