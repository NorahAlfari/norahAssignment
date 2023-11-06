//
//  SeventhPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 09/04/1445 AH.
//

import SwiftUI

struct SignUpSuccess: View {
    var body: some View {
        ZStack{
            
            SignUp()
            
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.gray,lineWidth: 1)
                .fill(.white)
                .frame(width: 350, height: 450)
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
            }
        }
    }
}

#Preview {
    SignUpSuccess()
}
