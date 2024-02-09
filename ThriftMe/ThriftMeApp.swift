//
//  ThriftMeApp.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

@main
struct ThriftMeApp: App {
    
    @AppStorage("Login") var needsLogIn = true
    var body: some Scene {
        WindowGroup {
            MainView()
                .fullScreenCover(isPresented: $needsLogIn){
                    // On dismiss action
                    needsLogIn = false
                } content: {
                    LogInView()
                }
        }
    }
}
