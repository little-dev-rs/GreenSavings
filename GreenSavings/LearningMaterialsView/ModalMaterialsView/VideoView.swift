//
//  VideoView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 30/10/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    var body: some View {
        NavigationView{
            VideoController(videoURL: Bundle.main.url(forResource: "ElecrticityVideo1", withExtension: "mp4")!)
                .frame(width: 347, height: 246)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
        }
        }
    }

#Preview {
    VideoView()
}
