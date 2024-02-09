//
//  MainView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//
import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    VStack{
                        Image(systemName: "house.circle.fill")
                        Text("Home")
                    }
            }
            
            AvatarView()
                .tabItem {
                    VStack{
                        Image(systemName: "tshirt.circle.fill")
                        Text("Avatar")
                    }
                }
            
            ChatView()
                .tabItem {
                    VStack{
                        Image(systemName: "ellipsis.message.fill")
                        Text("Messages")
                    }
                }
            
            ProfileView()
                .tabItem {
                    VStack{
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
