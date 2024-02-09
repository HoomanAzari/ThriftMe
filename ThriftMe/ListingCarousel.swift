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
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 135, height: 135)
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 135, height: 135)
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 135, height: 135)
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 135, height: 135)
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 135, height:135)
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    ListingCarousel(title: "Listings")
}
