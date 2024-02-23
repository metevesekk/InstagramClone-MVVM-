//
//  SearchBar.swift
//  InstagramClone
//
//  Created by Mete Vesek on 22.02.2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .onTapGesture {
                    isEditing = true
                }
            if isEditing{
                Button {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                } label: {
                    Text("Cancel")
                        .foregroundStyle(.black)
                }
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: 1)
                
            }
        }
    }
}

#Preview {
    SearchBar(text: .constant("Search..."), isEditing: .constant(true))
}
