//
//  ListingItem.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct ListingItem: View {
    var listingImage: String
    var listingTitle: String
    var listingPrice: Int
    var listingSeller: String
    var body: some View {
        Button {
            // Some action
        } label: {
            VStack(alignment: .leading, spacing: 3) {
                Image(listingImage)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 115, height: 115)
                    .clipped()
                Text(listingTitle)
                    .foregroundColor(.black)
                    .font(.system(size: 12))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(2)
                Text("$" + String(listingPrice))
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    .padding(.leading, 10)
                    .frame(width: 115, alignment: .leading)
                    .background(Color(hexString: "D5D5D5"))
                Text("Seller: " + listingSeller)
                    .foregroundColor(.black)
                    .font(.system(size: 12))
                    .bold()
            }.frame(width: 135, height: 200)
        }
    }
}

#Preview {
    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
}
