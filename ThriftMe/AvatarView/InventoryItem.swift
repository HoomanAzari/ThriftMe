//
//  InventoryItem.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct InventoryItem: View {
    var listingImage: String
    var listingTitle: String
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
            }.frame(width: 135, height: 160)
        }
    }
}

#Preview {
    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
}
