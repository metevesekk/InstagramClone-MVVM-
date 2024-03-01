//
//  NotificationsView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 20){
                ForEach(0 ..< 20) { _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
        
    }
}

#Preview {
    NotificationsView()
}
