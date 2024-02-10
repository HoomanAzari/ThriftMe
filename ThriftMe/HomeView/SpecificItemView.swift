//
//  SpecificItemView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-10.
//

import SwiftUI

struct SpecificItemView: View {
    @Binding var sheetVisible: Bool
    
    var body: some View {
        
        VStack (spacing:0) {        //to get rid of the gap between the top image and opening text
            ZStack (alignment: .trailing){
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)  //Takes the whole width
                    .frame(height: 200)     //Image should take the whole width, don't know the width for other devices
                    .clipped()
            }
            .frame(height: 200)
            
            ScrollView {
                VStack (alignment: .leading, spacing: 0) {
                    Text("Marvel Men's White T-shirt")
                        .font(Font.system(size:21))
                        .bold()
                        .padding(.bottom, 10)
                        .padding(.top, 16)
                    
                    Text("$15.00")
                        .padding(.bottom, 10)
                    
                    HStack {
                        Image(systemName: "info.circle")
                        Text("Rare Marvel Extreme Spiderman Tee 2010 XXL 2XL Top Biker Superhero Tshirt")
                        
                    }
                    
                    .padding(.bottom, 10)
                    
                    Divider()
                    
                    Button {
                        //action
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.green)
                                .frame(width: 200, height: 40)
                            
                            HStack{
                                Text("Message Seller")
                                    .foregroundColor(.white)
                                Image(systemName: "bubble.left.and.bubble.right")
                                    .foregroundStyle(.white)
                            }
                            
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal, 80)
                }
                
                Button {
                    //action
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.blue)
                            .frame(width: 200, height: 40)
                        
                        HStack{
                            Text("Add to cart")
                                .foregroundColor(.white)
                            Image(systemName: "cart.fill")
                                .foregroundStyle(.white)
                        }
                        
                    }
                }
                .padding(.horizontal, 70)
            }
        }
        .padding(.horizontal)
    }
}

