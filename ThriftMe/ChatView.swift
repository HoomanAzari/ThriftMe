//
//  MessageView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Chats")
                .font(.title)
                .bold()
                .padding(.bottom, 25)
            
            // 1st person
            ScrollView{
                VStack {
                    Button {
                        // Some action
                    } label: {
                        HStack {
                            Image("Sami")
                                .resizable()
                                .foregroundColor(.black)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading) {
                                Text("Sami Tabibi")
                                    .font(.system(size: 22))
                                    .foregroundColor(.black)
                                    .bold()
                                Text("Hello, could you do $45 by any chance?")
                                    .font(.system(size: 16))
                                    .lineLimit(1)
                                    .foregroundColor(.gray)
                            }.padding(.leading, 10)
                            Spacer()
                            Text("1:37 PM")
                                .foregroundColor(.gray)
                                .padding(.bottom)
                        }
                    }
                    Divider()
                    
                    //2nd person
                    Button {
                        // Some action
                    } label: {
                        HStack {
                            Image("Sam")
                                .resizable()
                                .foregroundColor(.black)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading) {
                                Text("Alice Dubois")
                                    .font(.system(size: 22))
                                    .foregroundColor(.black)
                                    .bold()
                                Text("Tu penses pouvoir me l'envoyer pour jeudi prochain?")
                                    .font(.system(size: 16))
                                    .foregroundColor(.gray)
                                    .lineLimit(1)
                            }.padding(.leading, 10)
                            Spacer()
                            Text("9:02 AM")
                                .foregroundColor(.gray)
                                .padding(.bottom)
                        }
                    }
                    Divider()
                    
                    // 3rd person
                    VStack {
                        Button {
                            // Some action
                        } label: {
                            HStack {
                                Image("jacket-category-img")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 60)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                VStack(alignment: .leading) {
                                    Text("John Doe")
                                        .font(.system(size: 22))
                                        .foregroundColor(.black)
                                        .bold()
                                    Text("How long have you had the jacket for?")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                        .lineLimit(1)
                                }.padding(.leading, 10)
                                Spacer()
                                Text("Friday")
                                    .foregroundColor(.gray)
                                    .padding(.bottom)
                            }
                        }
                    }
                }
            }
            Spacer()
        }.padding(.all)
    }
}

#Preview {
    ChatView()
}
