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
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                    InventoryItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets")
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    InventoryCarousel(title: "Tops")
}
