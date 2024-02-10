//
//  ThriftMeApp.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI
import Firebase


@main
struct ThriftMeApp: App {
    
    init() {
        FirebaseApp.configure()
    }
        
    @AppStorage("Login") var needsWelcome = true
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .fullScreenCover(isPresented: $needsWelcome){
                    // On dismiss action
                    needsWelcome = false
                } content: {
                    WelcomeView()
                }
        }
    }
}
