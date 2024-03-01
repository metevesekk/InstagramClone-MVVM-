//
//  NotificationCell.swift
//  InstagramClone
//
//  Created by Mete Vesek on 27.02.2024.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
    var body: some View {
        HStack{
            Image("mr-bishop")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipped()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text("mr-bishop").font(.system(size: 14, weight: .semibold)) +
            Text("liked one of your posts")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("mr-bishop")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button {
                    
                } label: {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                }

            }
            
        }.padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
