//
//  FeedCell.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 21/05/25.
//

import SwiftUI
import AVKit

struct FeedCell : View {
    
//    let post : Post
    var player = AVPlayer()
//    
//    init(post:Post){
//        self.post = post
//        self.player = AVPlayer(url: URL(string: post.videoUrl)!)
//    }
    
    let videoName : String
    let isActive = false
    
    var body: some View {
        
        ZStack {
//            CustomVideoPlayer (player: AVPlayer(url: URL(string: post.videoUrl)!))
            LocalVideoPlayer(videoName: videoName)
                .containerRelativeFrame([.horizontal, .vertical])
            
            
            VStack{
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("baxtior.bekmurodov")
                            .fontWeight(.semibold)
                        
                        Text("Hello I'm Data Scientist and iOS Engineer")
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28){
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundColor(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                
                                Text("533K")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                
                                Text("154K")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                    .padding(.bottom, 80)
                }
                .padding()
            }
        }
        .onAppear {
            player.play()
        }
        
    }
}


