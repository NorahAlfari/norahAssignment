//
//  SexithPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 09/04/1445 AH.
//

import SwiftUI

struct SexithPage: View {
    
    @State var email = ""
    @State var password = ""
    @State var username = ""
    
    var body: some View {
        
        VStack{
            
            HStack{
                Image(systemName: "chevron.backward")
                
                Spacer()
                    .frame(width: 120)
                
                Text("Sign Up")
                    .bold()
                    .font(.title)
            }.padding(.trailing, 150)
            
            Spacer()
                .frame(height: 50)
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray,lineWidth: 1)
                    .fill(.color4)
                    .frame(width: 350, height: 70)
                    
                    
                    
                HStack {
                    
                    Image(systemName: "person")
                        .foregroundColor(.color)
                    TextField("Enter your username", text: $username)
                        
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
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.color)
                    TextField("Enter your email", text: $email)
                    Image(systemName: "checkmark")
                        .foregroundColor(.color)
                        .padding(.trailing, 50)
                    
                        
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
                    TextField("Enter your password", text: $password)
                    Image(systemName: "eye.slash")
                        .foregroundColor(.gray)
                        .padding(.trailing, 50)
                    
                }.padding(.leading, 60)
                    .textFieldStyle(DefaultTextFieldStyle())
                }
            
            Spacer()
                .frame(height: 20)
            
            
            Button(action: {
                    // do when checked / unchecked
                    //...
            }) {
                HStack(alignment: .top, spacing: 10) {

                    Rectangle()
                        .fill(Color.color4)
                        .frame(width:20, height:20, alignment: .center)
                        .cornerRadius(5)
                    Text("I agree to the medidoc")
                        .foregroundColor(.gray)
                    
                
                   + Text(" Terms of Service")
                            .foregroundColor(.color)
                   
                  +  Text("  and")
                        .foregroundColor(.gray)
                    
                   + Text(" Privacy Polic")
                        .foregroundColor(.color)
                }
            }
                
           
            Spacer()
                .frame(height: 50)
            
            
            Button(action: {
              
            }) {
                Text("Sign Up")
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
            
           
            
        }
    }
}

#Preview {
    SexithPage()
}
