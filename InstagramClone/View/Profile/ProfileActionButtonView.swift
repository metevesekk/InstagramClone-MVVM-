//
//  ProfileActionButtonView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 28.02.2024.
//

import SwiftUI

struct ProfileActionButtonView: View {
    var isCurrentUser = false
    var isFollowed = false
    
    var body: some View {
        if isCurrentUser{
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.system(size: 15, weight: .semibold))
                    .frame(width: 340, height: 34)
                    .foregroundStyle(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1.0)
                    )
        }
        }else{
            HStack{
                Button {
                    
                } label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 160, height: 34)
                        .foregroundColor(isFollowed ? Color.black : Color.white)
                        .background(isFollowed ? Color.white : Color.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
                        )
            }
                
                Button {
                    
                } label: {
                    Text("Message")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 160, height: 34)
                        .foregroundStyle(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1.0)
                        )
            }
            }
        }
    }
}

#Preview {
    ProfileActionButtonView()
}
