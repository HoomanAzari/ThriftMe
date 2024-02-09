//
//  HomeView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct HomeView: View {
    
    @State var query: String = ""
    // @FocusState var queryBoxFocused: Bool
    var body: some View {
        VStack{
            HStack{
                TextField("What are you looking for?", text: $query)
                    .textFieldStyle(.roundedBorder)
                // .focused($queryBoxFocused)
                Button {
                    // Action
                } label: {
                    Text("Go")
                        .padding(.horizontal)
                        .frame(height: 32)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
