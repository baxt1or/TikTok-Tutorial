//
//  CurrentUserProfile.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct CurrentUserProfile : View {
    var body: some View {
        
        NavigationStack {
            
            ScrollView{
                VStack(spacing:12){
                    
                    ProfileHeader()
                    
                    ProfileGrid()
                        
                    
                }
            }
            .navigationTitle("baxtior")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    CurrentUserProfile()
}
