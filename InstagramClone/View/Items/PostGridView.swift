//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 23.02.2024.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0 ..< 10) { _ in
                NavigationLink {
                    FeedView()
                } label: {
                    Image("mr-bishop")
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                }

            }
        })
    }
}

#Preview {
    PostGridView()
}
