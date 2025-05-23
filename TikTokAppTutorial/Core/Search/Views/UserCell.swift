//
//  UserCell.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct UserCell : View {
    
    var body : some View {
        
        HStack{
            
            Image("photo")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("baxtior.bekmurodov")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("data science")
                    .font(.footnote)
                   
            }
            
            Spacer()
            
        }
        
    }
    
    
}

#Preview {
    UserCell()
}
