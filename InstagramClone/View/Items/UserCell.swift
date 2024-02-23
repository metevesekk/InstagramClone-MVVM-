//
//  UserCell.swift
//  InstagramClone
//
//  Created by Mete Vesek on 23.02.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            //Image
            Image("mr-bishop")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipped()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            //VStack -> username, fullname
            VStack(alignment: .leading) {
                Text("whiskeyjack")
                    .font(.system(size: 14, weight: .semibold))
                Text("Fegill Igon")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
