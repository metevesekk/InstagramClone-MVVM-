//
//  RegistrationView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 16.03.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State var imagePickerpresented = false
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                ZStack{
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 140)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(.top, 60)
                            .padding(.bottom, 20)
                    } else{
                        Button(action: { imagePickerpresented.toggle() }, label: {
                            Image("plus_photo")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(.white)
                                .scaledToFill()
                                .frame(width: 170, height: 140)
                                .padding(.top, 60)
                        }).sheet(isPresented: $imagePickerpresented, onDismiss: loadImage, content: {
                            ImagePicker(image: $selectedImage)
                        })
                    }
                }
                
                VStack(spacing: 11.5){
                    //email field
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 13)
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 13)
                    
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
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
                    
                    //sign in
                    Button(action: {
                        viewModel.register(withEmail: email, pasword: password, image: selectedImage, fullname: fullname, username: username)
                        print(email)
                        print(password)
                    }, label: {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 360, height: 50)
                            .background(Color.purple)
                            .clipShape(Capsule())
                            .padding(.top, 8)
                    }).padding(.top, 10)
                    
                    Spacer()
                    //go to sign up

                    Button(action: { mode.wrappedValue.dismiss() } , label: {
                        HStack{
                         Text("Already have an account?")
                                .font(.system(size: 14))
                            
                         Text("Sign In")
                                .font(.system(size: 14, weight: .semibold))
                        }.foregroundStyle(.white)
                    })
                }
            }

        }.padding(.top, -36)

    }
}

extension RegistrationView{
    func loadImage(){
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

#Preview {
    RegistrationView()
}
