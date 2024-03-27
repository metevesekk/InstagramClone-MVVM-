//
//  InstagramCloneApp.swift
//  InstagramClone
//
//  Created by Mete Vesek on 18.02.2024.
//

import SwiftUI
import Firebase

@main
struct InstagramCloneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel() )
        }
    }
}
