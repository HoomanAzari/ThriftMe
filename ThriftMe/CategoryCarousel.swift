//
//  CategoryCarousel.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct CategoryCarousel: View {
    var body: some View {
        VStack() {
            HStack() {
                Text("Shop By Category")
                    .bold()
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    CategoryCarousel()
}
