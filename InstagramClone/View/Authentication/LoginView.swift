//
//  LoginView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 16.03.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Image("instagram_logo_black")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(.white)
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .padding(.top, 60)
                    
                    VStack(spacing: 11.5){
                        //email field
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                            .padding(.horizontal, 13)
                        
                        //password field
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                            .padding(.horizontal, 13)
                    }
                    
                    //forgot password
                    HStack{
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundStyle(.white)
                        }).padding(.trailing)
                            .padding(.top, 7)
                    }
                    
                    //sign in
                    Button(action: {
                        viewModel.login()
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 360, height: 50)
                            .background(Color.purple)
                            .clipShape(Capsule())
                            .padding(.top, 8)
                    })
                    
                    Spacer()
                    //go to sign up
                    
                    NavigationLink {
                        RegistrationView().navigationBarHidden(true)
                    } label: {
                        HStack{
                         Text("Don't have an account?")
                                .font(.system(size: 14))
                            
                         Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }.foregroundStyle(.white)
                    }.padding(.bottom, 0)
                }
            }.padding(.top, -36)
        }
    }
}

#Preview {
    LoginView()
}
