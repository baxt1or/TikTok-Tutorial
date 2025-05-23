//
//  ProfileHeader.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct ProfileHeader : View {
    var body: some View {
        VStack(spacing:22) {
            
            VStack(spacing: 8) {
                
                Image("photo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Text("@baxtior")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            
            
            HStack(spacing: 16){
                
                
                UserStateView(value: 298, title: "Followers")
                UserStateView(value: 21, title: "Following")
                UserStateView(value: 93, title: "Likes")
                
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: 40)
                    .background(Color(.systemGray6))
                    .padding(.horizontal)
                    .foregroundColor(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            .cornerRadius(6)
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeader()
}


struct UserStateView : View {
    
    let value : Int
    let title : String
    
    var body: some View {
        VStack(spacing: 5){
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}
