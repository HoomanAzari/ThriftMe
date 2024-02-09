//
//  BrandItem.swift
//  ThriftMe
//
//  Created by Alexander Liu on 2024-02-09.
//

import SwiftUI

struct BrandItem: View {
    var brandName: String
    var brandImage: String
    var body: some View {
        Button {
            // Some action
        } label: {
            VStack {
                Image(brandImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 145, height: 80)
                    .clipped()
                Text(brandName)
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .padding(.bottom, 2)
                    .padding(.top, -5)
            }.frame(width: 145, height: 100)
                .background(Color(hexString: "D5D5D5"))
        }
    }
}

#Preview {
    BrandItem(brandName: "Nike", brandImage: "nike-logo")
}
