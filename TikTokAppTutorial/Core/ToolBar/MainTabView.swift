//
//  MainTabView.swift
//  TikTokAppTutorial
//
//  Created by baxtiyor bekmurodov on 21/05/25.
//

import SwiftUI

struct MainTabView : View {
    
    @State private var selectedTab = 0
    
    var body : some View {
        
        TabView(selection: $selectedTab) {
            
            FeedView()
                .tabItem {
                    
                    VStack {
                        Image(systemName: selectedTab  == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                    
                }
            
            
            ExploreView()
                .tabItem {
                    
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2" : "person.2.fill")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                           
                        Text("Home")
                    }
                    
                }
                .onAppear { selectedTab = 1}
                .tag(1)
            
            
            Text("Friends")
                .tabItem {
                    
                    
                    Image(systemName: "plus")
                       
                     
                }
                .onAppear { selectedTab = 2}
                .tag(2)
            
            
            Text("Friends")
                .tabItem {
                    
                    VStack{
                        Image(systemName:  selectedTab == 3 ? "heart" : "heart.fill")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Likes")
                    }
                    
                }
                .onAppear { selectedTab = 3}
                .tag(3)
            
            
            Text("Prfile")
                .tabItem {
                    
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person" : "person.fill")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                    
                }
                .onAppear { selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
        
      
    }
    
}


#Preview {
    MainTabView()
}
