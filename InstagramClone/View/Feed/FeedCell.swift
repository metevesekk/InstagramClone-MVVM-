//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            // user info
            HStack {
                Image("mr-bishop")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("mrbishop")
                    .font(.system(size: 20, weight: .semibold))
            }
            .padding([.leading, .bottom], 8)
            // post image
            Image("mr-bishop")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 400)
                .clipped()
            
            // action button
            HStack(spacing: 15) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding(.leading, 4)
            .foregroundColor(.black)
            // caption
            
            Text("3 Likes")
                .font(.system(size: 16, weight: .semibold))
                .padding(.leading, 5)
                .padding(.bottom, 2)
            
            HStack {
                Text("mr-bishop").font(.system(size: 14, weight: .semibold)) +
                Text(" All men have limits. They learn what the are and learn not to exceed. I ignore mine")
                    .font(.system(size: 15))
            }.padding(.horizontal, 6)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
                .padding(.leading, 3)
                .padding(.top, -1)
        }
    }
}

#Preview {
    FeedCell()
}
