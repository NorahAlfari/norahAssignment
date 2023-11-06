//
//  TenPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 17/04/1445 AH.
//

import SwiftUI

struct NewPassword: View {
    @State var password = ""
    @State var confirmPassword = ""
    @State  var isCardViewActive = false
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Create new password")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Create your new password to login")
                    .foregroundStyle(Color.gray)
                    .font(.title3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray,lineWidth: 1)
                        .fill(.color4)
                        .frame(width: 350, height: 70)
                    
                    
                    HStack {
                        
                        Image(systemName: "lock")
                            .foregroundColor(.color)
                        SecureField("Enter your password", text: $password)
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                            .padding()
                        
                    }.padding()
                    
                }
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray,lineWidth: 1)
                        .fill(.color4)
                        .frame(width: 350, height: 70)
                    
                    
                    
                    HStack {
                        
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        SecureField("Confirm password", text: $confirmPassword )
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                            .padding()
                        
                    }.padding()
                }
                
                Button(action: {
                    isCardViewActive = true
                }) {
                    NavigationLink(destination: Card()) {
                        Text("Create Password")
                            .bold()
                            .font(.system(size: 20))
                            .frame(width: 350, height: 60)
                            .foregroundColor(Color.white)
                            .background(Color.color)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                    }
                }
                
                
                
                
            }.padding()
        }
    }
}
#Preview {
    NewPassword()
}


struct Card: View {
    var body: some View{
        
        ZStack{
            NewPassword()
            Color.gray.opacity(0.25)
                .ignoresSafeArea()
            
            
            VStack{
                ZStack{
                    Circle()
                        .fill(.color4)
                        .frame(width: 100, height: 100)
                    
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.color)
                }
                Text("Success")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                
                Text("Your account has been successfully registered")
                    .font(.title2)
                    .foregroundColor(.color2)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                  
                }) {
                    Text("Login")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 300, height: 90)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                       
                }
            }.background(RoundedRectangle(cornerRadius: 50)
                .stroke(Color.gray,lineWidth: 1)
                .fill(.white)
                .frame(width: 350, height: 450))
            
            
            
            
            
            
        }
        
        
        
    }
    
    
    
    
    
}
