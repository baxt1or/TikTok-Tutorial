//
//  NotificationCell.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct NotificationCell : View {
    var body: some View {
        HStack{
            
            Image("photo")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            
            HStack{
                Text("baxtior")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("liked one of your posts.")
                    .font(.footnote)
                
                Text("3w")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image("photo2")
                .resizable()
                .frame(width: 48, height: 62)
                .cornerRadius(6)
            
        }
        .padding(.horizontal)
    }
}


#Preview {
    NotificationCell()
}
