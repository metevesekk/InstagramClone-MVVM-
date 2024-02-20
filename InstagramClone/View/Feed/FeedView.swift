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
            ForEach(0 ..< 100) { _ in
                FeedCell()
            }
        }
    }
}

#Preview {
    FeedView()
}
