//
//  NotificationView.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct NotificationView : View {
    var body: some View {
        
        NavigationStack{
            ScrollView {
                
                LazyVStack(spacing:24){
                     
                    ForEach(0 ..< 120){ notification in
                        NotificationCell()
                    }
                    
                }
                
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
        
    }
}


#Preview {
    NotificationView()
}
