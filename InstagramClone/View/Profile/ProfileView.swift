//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 32){
                ProfileHeaderView()
                
                PostGridView()
            }.padding(.top)
        }
    }
}

#Preview {
    ProfileView()
}
