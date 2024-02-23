//
//  UserListView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 23.02.2024.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 11){
                ForEach(0 ..< 20) { _ in
                    NavigationLink {
                        ProfileView()
                    } label: {
                        UserCell()
                            .padding(.leading)
                    }

                }
            }
        }
    }
}

#Preview {
    UserListView()
}
