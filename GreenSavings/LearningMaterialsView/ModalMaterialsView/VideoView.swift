//
//  VideoView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 28/10/23.
//

import SwiftUI
import AVKit
struct VideoView: View {
    let url=URL(string: "https://drive.google.com/file/d/1OJUhiqPIrsgmB5_kMGQXzqhRCYIwZu0d/view?usp=sharing")!
    
    var body: some View {
        NavigationView{
            VStack {
                VideoPlayer(player: AVPlayer(url: url))
                    .scaledToFill()
                    .frame(width: 350, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
            }
        }
    }
}
#Preview {
    VideoView()
}
