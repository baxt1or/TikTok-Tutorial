//
//  FeedModel.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 21/05/25.
//

import Foundation

class FeedModel : ObservableObject {
    
    @Published var posts = [Post]()
    
    
    let videoUrls = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
    ]
    
    init() {
        fetchPosts()
    }
    
    
    func fetchPosts() {
        self.posts  = [
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0])

        ]
    }
}
