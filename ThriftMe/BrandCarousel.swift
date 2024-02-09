//
//  BrandCarousel.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct BrandCarousel: View {
    var body: some View {
        VStack() {
            HStack {
                Text("Popular Brands")
                    .bold()
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    BrandItem(brandName: "Nike", brandImage: "nike-logo")
                    BrandItem(brandName: "The North Face", brandImage: "the-north-face-logo")
                    BrandItem(brandName: "Patagonia", brandImage: "patagonia-logo")
                    BrandItem(brandName: "Adidas", brandImage: "adidas-logo")
                    BrandItem(brandName: "New Balance", brandImage: "new-balance-logo")
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    BrandCarousel()
}
