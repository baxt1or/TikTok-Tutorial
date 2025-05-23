





import SwiftUI
import AVKit

struct LocalVideoPlayer: View {
    
    let videoName: String
    let isActive = false
    
    @State private var player : AVPlayer?
    
    var body: some View {
        GeometryReader { geometry in
            if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
                let player = AVPlayer(url: url)
                
                TikTokVideoPlayer(player: player)
                    .onAppear {
                        player.play()
                    }
                    .ignoresSafeArea()
                
            } else {
                Text("Video not found")
                    
            }
        }
    }
}


#Preview {
    LocalVideoPlayer(videoName: "video")
}
