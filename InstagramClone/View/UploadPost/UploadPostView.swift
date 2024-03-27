//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Mete Vesek on 20.02.2024.
//

import SwiftUI

struct UploadPostView: View {
    
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    @State var imagePickerpresented = false
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button(action: { imagePickerpresented.toggle() }, label: {
                    Image("plus")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .clipped()
                        .padding(.top, 100)
                        .foregroundStyle(.black)
                    
                }).sheet(isPresented: $imagePickerpresented, onDismiss: loadImage, content: {
                    ImagePicker(image: $selectedImage)
                })
            } else if let image = postImage{
                HStack(alignment: .top){
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                    
                    TextField("Enter Your Caption", text: $captionText)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 350, height: 45)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundStyle(.white)
                }).padding()

            }
                
            
            Spacer()
        }
    }
}

extension UploadPostView{
    func loadImage(){
        guard let selectedImage = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    UploadPostView()
}
