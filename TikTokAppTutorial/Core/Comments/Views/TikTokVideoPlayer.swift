//
//  TikTokVideoPlayer.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI
import AVFoundation

struct TikTokVideoPlayer: UIViewRepresentable {
    let player: AVPlayer

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)

        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = UIScreen.main.bounds      

        view.layer.addSublayer(playerLayer)
        player.play()
        player.isMuted = true 

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
