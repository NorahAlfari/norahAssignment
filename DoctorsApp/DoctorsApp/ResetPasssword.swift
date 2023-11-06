//
//  EightPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 17/04/1445 AH.
//

import SwiftUI

struct ResetPasssword: View {
    @State var email = ""
    @State var phone = ""
    @State private var choice = 0
    var body: some View {
        VStack(spacing: 24.0){
            Text("Forgot Your Password?")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Enter your email or youfone, we will send you confirmation code")
                .foregroundStyle(Color.gray)
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Picker("What is your favorite color?", selection: $choice) {
                Text("Email").tag(0)
                Text("Phone").tag(1)
                
            }.pickerStyle(.segmented)
            
            
            if choice == 0{
                HStack {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.color)
                    TextField("Enter your email", text: $email)
                    
                }.padding()
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray,lineWidth: 1)
                            .fill(.gray.opacity(0.10))
                            .frame(width: 380, height: 50))
                
            }else{
                HStack {
                    
                    Image(systemName: "phone")
                        .foregroundColor(.color)
                    TextField("Enter your phone", text: $phone)
                        
                }.padding()
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray,lineWidth: 1)
                        .fill(.gray.opacity(0.10))
                        .frame(width: 380, height: 50))
                
                
            }
            
            
            
            
            Button(action: {
              
            }) {
                Text("Reset Password")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 380, height: 60)
                    .foregroundColor(Color.white)
                    .background(Color.color)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                   
            }
            
        }.padding()
    }
}

#Preview {
    ResetPasssword()
}
