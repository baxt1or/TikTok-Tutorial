//
//  FeedView.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 21/05/25.
//

import SwiftUI


struct FeedView : View {
    
//    @StateObject var viewModel = FeedModel()
    
    let videoNames: [String] = ["video", "video2", "video3"]

    
    var body: some View {
        
        ScrollView {
            
            LazyVStack(spacing: 0){
                
                ForEach(videoNames, id: \.self) { post in
                
                    FeedCell(videoName: post)
                        
                }
                
            }
            .scrollTargetLayout()
            
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
    
}

#Preview {
    FeedView()
}
