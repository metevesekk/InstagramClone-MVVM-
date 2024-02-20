//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
            
            SearchView()
            
            UploadPostView()
            
            NotificationsView()
            
            ProfileView()
        }
    }
}

#Preview {
    MainTabView()
}
