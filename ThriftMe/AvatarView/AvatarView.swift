//
//  AvatarView.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//

import SwiftUI
import SceneKit

struct AvatarView: View {
    @State var models = [Model(id: 0, name: "chiffon-dress", modelName: "dress.usdz")]
    @State var index = 0
    var body: some View {
        VStack(alignment: .leading) {
            Text("Avatar")
                .font(.title)
                .bold()
                .padding(.bottom, 25)
            ScrollView(showsIndicators: false) {
                if let modelName = models.first?.modelName {
                    SceneView(scene: SCNScene(named: modelName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                        .frame(height: 450)
                } else {
                    Text("Model not found")
                        .foregroundColor(.red)
                }
                InventoryCarousel(title: "Tops")
                InventoryCarousel(title: "Bottoms")
            }
        }.padding(.all)
    }
}

#Preview {
    AvatarView()
}
