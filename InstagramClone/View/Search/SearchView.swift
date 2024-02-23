//
//  SearchView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode = false
    var body: some View {
        ScrollView {
            
            //Search Bar
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            
            ZStack{
                if inSearchMode{
                    UserListView()
                }else{
                    PostGridView()
                }
            }
            
            //Grid View/User List View
            //PostGridView()
      //      UserListView()
        }
    }
}

#Preview {
    SearchView()
}
