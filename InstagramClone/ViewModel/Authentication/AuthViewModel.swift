//
//  AuthViewModel.swift
//  InstagramClone
//
//  Created by Mete Vesek on 26.03.2024.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        userSession = Auth.auth().currentUser
    }
    
    func login(){
        print("login")
    }
    
    func register(){
        print("register")
    }
    
    func signout(){
        
    }
    
    func resetPassword(){
        
    }
    
    func fetchUser(){
        
    }
    
}
