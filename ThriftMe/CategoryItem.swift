//
//  CategoryItem.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct CategoryItem: View {
    var categoryName: String
    var categoryImage: String
    var body: some View {
        VStack {
            Image(categoryImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 88)
                .clipped()
            Text(categoryName)
                .font(.system(size: 12))
                .padding(.top, -7)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 12)
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
    }
}

#Preview {
    CategoryItem(categoryName: "Tees", categoryImage: "tee-category-img")
}
