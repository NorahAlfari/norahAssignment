//
//  ThirdPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 08/04/1445 AH.
//

import SwiftUI

struct ThirdPage: View {
    var body: some View {
        VStack{
            Image(systemName: "command")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.color)
        Text("معسكر SWIFT ")
            .font(.system(size: 35))
            .bold()
            .foregroundColor(.color)
           
            Spacer()
                .frame(height: 40)
           
            Text("Let's get started!")
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.black)
            
            Spacer()
                .frame(height: 40)
            
            Text("Login to enjoy the features we've provided and stay healthy!")
                .multilineTextAlignment(.center)
                .font(.system(size: 15))
                
                .foregroundColor(.gray)
            
            Spacer()
                .frame(height: 40)
            
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
            
            Spacer()
                .frame(height: 20)
            
            Button(action: {
             
            }) {
                Text("Sign Up")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 350, height: 70)
                    .foregroundColor(Color.color)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.color,lineWidth: 1)
                    )
                    
                    }
        }
    }
}

#Preview {
    ThirdPage()
}
