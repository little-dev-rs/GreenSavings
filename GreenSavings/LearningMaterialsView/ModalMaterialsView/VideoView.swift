//
//  VideoView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 30/10/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var isAlertActive = false
    
    @State private var player: AVPlayer? = {
        if let bundle = Bundle.main.path(forResource: "output2", ofType: "mov") {
            return.init(url:URL(filePath: bundle))
        }
        return nil
    }()
    
    var learningMaterial: LearningMaterials
    
    var body: some View {
        
        
        HStack(alignment: .top) {
            
            VStack(alignment: .center) {
                
                Text(learningMaterial.materialType.title)
                    .font(.title).bold()
                    .padding()
                
                VideoPlayerView(url: Bundle.main.url(forResource: "electricityVideo", withExtension: "mp4")!)
                                    .frame(width: 347, height: 246)
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                
//                VideoController(videoURL: Bundle.main.url(forResource: "electricityVideo", withExtension: "mp4")!)
//                    .frame(width: 347, height: 246)
//                    .scaledToFit()
//                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
//
//                if let player {
//                    CustomVideoPlayer(player: player).onAppear() {
//                        player.play()
//                    }.aspectRatio(contentMode: .fill)
//                }
                
                Text(learningMaterial.materialType.description)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                
                Button {
                    if !learningMaterial.isLearned {
                        isAlertActive = true
                    } else {
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.black)
                        Text("Done")
                            .font(.title3).bold()
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
                }
            }
            if isAlertActive {
                CustomAlertView(isActive: $isAlertActive, model: learningMaterial.giftPlant, action: {
                    presentationMode.wrappedValue.dismiss()
                })
            }
        }
        
    }
}

struct VideoView_Previews : PreviewProvider {
    
    static var previews: some View {
        
        VideoView(learningMaterial: .init(materialType: .video, learningMaterialsTitle: "mat", isUnlocked: true, isLearned: false, giftPlant: .init(name: "safsf", description: "", imageName: "")))
        
    }
    
}


import SwiftUI
import UIKit
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {

        let controller = AVPlayerViewController()
        player.isMuted = true
        player.play()
        controller.player = player
        
        NotificationCenter.default.addObserver(
            forName: .AVPlayerItemDidPlayToEndTime,
            object: player.currentItem,
            queue: nil
        ) { _ in
            player.seek(to: .zero)
            player.play()
        }
        
        controller.showsPlaybackControls = false
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    
}


import AVKit
import SwiftUI

struct VideoPlayerView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        let player = AVPlayer(url: url)
        playerViewController.player = player
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Nothing to update here
    }
}
