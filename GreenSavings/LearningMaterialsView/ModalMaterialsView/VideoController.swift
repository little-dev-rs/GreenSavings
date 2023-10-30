//
//  VideoController.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 30/10/23.
//

import SwiftUI
import AVKit

struct VideoController: UIViewControllerRepresentable {
    let videoURL: URL

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Vuoto
    }
}

