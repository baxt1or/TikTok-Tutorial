//
//  ProfileGrid.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 22/05/25.
//

import SwiftUI

struct ProfileGrid : View {
    
    let columns = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 2){
            
            ForEach(0 ..< 120){ post in
               
                Rectangle()
                    .fill(.pink)
                    .frame(width: width, height:200)
                
            }
            
            
        }
        
    }
}


#Preview {
    ProfileGrid()
}
