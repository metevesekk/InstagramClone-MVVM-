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
    
    static let shared = AuthViewModel()
    
    init(){
        userSession = Auth.auth().currentUser
    }
    
    func login(){
        print("login")
    }
    
    func register(withEmail email: String, pasword: String, image: UIImage?,
                  fullname: String, username: String){
        guard let image = image else { return }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: pasword) { result, error in
                if let error = error{
                    print(error.localizedDescription)
                    return
                }
                guard let user = result?.user else { return }
                print("succesfully registered user...")
                
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageUrl,
                            "uid": user.uid]
                Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                    print("Succesfully uploaded user")
                    self.userSession = user
                }
            }
        }
    }
    
    func signout(){
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword(){
        
    }
    
    func fetchUser(){
        
    }
    
}
