//
//  SearchView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView {
            
            //Search Bar
            SearchBar(text: $searchText)
                .padding()
            
            //Grid View/User List View
        }
    }
}

#Preview {
    SearchView()
}
