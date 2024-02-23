//
//  FeedView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 30) {
                ForEach(0 ..< 10) { _ in
                    FeedCell()
                }
            }.padding(.top)
        }
    }
}

#Preview {
    FeedView()
}
