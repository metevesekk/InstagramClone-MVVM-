//
//  CustomSecureField.swift
//  InstagramClone
//
//  Created by Mete Vesek on 16.03.2024.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    var body: some View {
        ZStack (alignment: .leading){
            if text.isEmpty{
                placeholder
                    .foregroundStyle(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            
            HStack{
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
                
                SecureField("", text: $text)
            }
        }
    }
}

#Preview {
    CustomSecureField(text: .constant(""), placeholder: Text("Password"))
}
