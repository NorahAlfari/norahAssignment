//
//  ForthPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 08/04/1445 AH.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                
                Spacer()
                    .frame(width: 120)
                
                Text("Login")
                    .bold()
                    .font(.title)
            }.padding(.trailing, 150)
            
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray,lineWidth: 1)
                    .fill(.color4)
                    .frame(width: 350, height: 70)
                    
                    
                    
                HStack {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    TextField("Enter your email", text: $email)
                        
                }.padding(.leading, 60)
                .textFieldStyle(DefaultTextFieldStyle())
            }
            Spacer()
                .frame(height: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray,lineWidth: 1)
                    .fill(.color4)
                    .frame(width: 350, height: 70)
                    
                    
                    
                HStack {
                    
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                    SecureField("Enter your password", text: $password)
                    Image(systemName: "eye.slash")
                        .foregroundColor(.gray)
                        .padding(.trailing, 50)
                        
                }.padding(.leading, 60)
                .textFieldStyle(DefaultTextFieldStyle())
            }
            
            Button(action: {
                
            }) {
                Text("Forgot Password?")
                    .font(.title3)
                    .foregroundColor(.color)
                    .padding(.leading, 190)
            }
            
            Button(action: {
              
            }) {
                Text("Login")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 350, height: 70)
                    .foregroundColor(Color.white)
                    .background(Color.color)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                   
            }
            
            HStack{
                Text("Don't have an account?")
                    .foregroundColor(.gray)
                    .font(.title2)
                
                Button(action: {
                    
                }) {
                    Text("Sign Up")
                        .font(.title2)
                        .foregroundColor(.color)
                        .padding(.leading, 5)
                }
            
            }
            
            HStack{
                RoundedRectangle(cornerRadius: 30)
                    .fill(.color4)
                    .frame(width: 150, height: 2)
                
                Text("OR")
                    .foregroundColor(.gray)
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(.color4)
                    .frame(width: 150, height: 2)
                
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray,lineWidth: 1)
                    .fill(.white)
                    .frame(width: 350, height: 70)
                    
                    
                    
                HStack {
                    
                    Image("Image 1")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding(.trailing,50)
                   
                    
                    Text("Sign in with Google")
                        .bold()
                    
                        
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray,lineWidth: 1)
                    .fill(.white)
                    .frame(width: 350, height: 70)
                    
                    
                    
                HStack {
                    
                    Image("Image 3")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding(.trailing,50)
                    
                   
                    
                    Text("Sign in with Apple")
                        .bold()
                    
                        
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray,lineWidth: 1)
                    .fill(.white)
                    .frame(width: 350, height: 70)
                    
                    
                    
                HStack {
                    
                    Image("Image 4")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding(.trailing,50)
                   
                    
                    Text("Sign in with Facebook")
                        .bold()
                    
                        
                }
            }
            
            
            
            
             
        }
    }
}

#Preview {
    Login()
}
