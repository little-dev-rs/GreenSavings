//
//  VideoView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 30/10/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var learningMaterial: LearningMaterials
    @State var isAlertActive=false
    var body: some View {
        NavigationView{
            VStack{
                VideoController(videoURL: Bundle.main.url(forResource: learningMaterial.imageName, withExtension: "mp4")!)
                    .frame(width: 347, height: 246)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                Button {
                    isAlertActive = true
                } label: {
                    Text("Done")
                }
            }
        }
    }
}

//#Preview{
//VideoView(learningMaterial: LearningMaterials(learningMaterialsTitle: "Video",
//                                               isUnlocked: true,
//                                               isLearned: false, imageName: "ElecrticityVideo1",
//                                               giftPlant: .init(name: "Pine",
//                                                                description: "Pine trees produce a sticky substance called resin, which has been used for various purposes, including making turpentine and sealing boats.",
//                                                                imageName: "Garden/pine"))
//          )
//}
