//
//  ContentView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 18.02.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group{
            //if not logged in show login
            if viewModel.userSession == nil{
                LoginView()
            }else{
                MainTabView()
            }
            //else show main interface
        }
    }
}

#Preview {
    ContentView()
}
