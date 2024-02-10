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
                            Image("p18")
                                .resizable()
                                .foregroundColor(.black)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading) {
                                Text("ImSami")
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
                            Image("p18")
                                .resizable()
                                .foregroundColor(.black)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading) {
                                Text("alice_dubois")
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
                                Image("p1")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 60)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                VStack(alignment: .leading) {
                                    Text("al3jandro")
                                        .font(.system(size: 22))
                                        .foregroundColor(.black)
                                        .bold()
                                    Text("How much do you love spiderman?")
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
