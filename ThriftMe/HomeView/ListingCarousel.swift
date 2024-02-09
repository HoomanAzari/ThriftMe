//
//  ListingCarousel.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct ListingCarousel: View {
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
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                    ListingItem(listingImage: "jacket-category-img", listingTitle: "Blue jean jacket with side pockets", listingPrice: 56, listingSeller: "John Doe")
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    ListingCarousel(title: "Listings")
}
