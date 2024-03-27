//
//  CustomTextField.swift
//  InstagramClone
//
//  Created by Mete Vesek on 16.03.2024.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    var body: some View {
        ZStack (alignment: .leading){
            if text.isEmpty{
                placeholder
                    .foregroundStyle(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
                
                TextField("", text: $text)
            }
        }
    }
}

#Preview {
    CustomTextField(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
}
