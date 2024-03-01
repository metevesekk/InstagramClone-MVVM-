//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 28.02.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("mr-bishop")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 15) {
                    UserStatView(value: 3, title: "Posts")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 1, title: "Following")
                }.padding(.trailing, 27)
            }
            
            Text("Mr Bishop")
                .font(.system(size: 18, weight: .semibold))
                .padding([.leading, .top])
            
            Text("I have the high ground")
                .font(.system(size: 18))
                .padding(.leading)
                .padding(.top, -5)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView()
                
                Spacer()
            }.padding(.top)

        }
    }
}


#Preview {
    ProfileHeaderView()
}
