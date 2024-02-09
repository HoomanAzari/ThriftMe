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
            HStack() {
                Text("Popular Brands")
                    .bold()
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 145, height: 100)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 145, height: 100)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 145, height: 100)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 145, height: 100)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 145, height: 100)
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    BrandCarousel()
}
