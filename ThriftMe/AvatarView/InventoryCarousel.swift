//
//  InventoryCarousel.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct InventoryCarousel: View {
    var title: String
    var body: some View {
        VStack() {
            HStack() {
                Text(title)
                    .bold()
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    InventoryItem(listingImage: "saved-outfit-1", listingTitle: "Saved Outfit #1")
                    InventoryItem(listingImage: "saved-outfit-1", listingTitle: "Saved Outfit #2")
                    InventoryItem(listingImage: "saved-outfit-1", listingTitle: "Saved Outfit #3")
                    InventoryItem(listingImage: "saved-outfit-1", listingTitle: "Saved Outfit #4")
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    InventoryCarousel(title: "Saved Outfits")
}
