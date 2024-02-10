//
//  AvatarView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Avatar")
                .font(.title)
                .bold()
                .padding(.bottom, 25)
            ScrollView(showsIndicators: false) {
                Rectangle()
                    .frame(height: 450)
                InventoryCarousel(title: "Tops")
                InventoryCarousel(title: "Bottoms")
            }
        }.padding(.all)
    }
}

#Preview {
    AvatarView()
}
