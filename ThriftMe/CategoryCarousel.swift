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
                    CategoryItem(categoryName: "Tees", categoryImage: "tee-category-img")
                    CategoryItem(categoryName: "Pants", categoryImage: "pants-category-img")
                    CategoryItem(categoryName: "Dresses", categoryImage: "dress-category-img")
                    CategoryItem(categoryName: "Jackets", categoryImage: "jacket-category-img")
                    CategoryItem(categoryName: "Shoes", categoryImage: "shoes-category-img")
                    CategoryItem(categoryName: "Headwear", categoryImage: "headwear-category-img")
                    CategoryItem(categoryName: "Skirts", categoryImage: "skirt-category-img")
                }
            }
        }.padding(.leading)
    }
}

#Preview {
    CategoryCarousel()
}
