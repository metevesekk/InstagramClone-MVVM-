//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 28.02.2024.
//

import SwiftUI


struct UserStatView: View {
    var value : Int
    var title: String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
                    
            Text(title)
                .font(.system(size: 15))
        }.frame(width: 80, alignment: .center)
    }
}


#Preview {
    UserStatView(value: 1, title: "Post")
}
