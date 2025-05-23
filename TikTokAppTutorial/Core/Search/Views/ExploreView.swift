//
//  ExploreView.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct ExploreView : View {
    var body: some View {
         
        NavigationStack{
            ScrollView {
                LazyVStack {
                    
                    ForEach(0 ..< 130) { user in
                        
                        UserCell()
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                    }
                    
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}



#Preview {
    ExploreView()
}
