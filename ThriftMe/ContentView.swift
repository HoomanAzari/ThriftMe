//
//  ContentView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            MenuView()
                .tabItem {
                    VStack{
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
            }
            
            AboutView()
                .tabItem {
                    VStack{
                        Image(systemName: "info.circle")
                        Text("About")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack{
                        Image(systemName: "photo")
                        Text("Gallery")
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

