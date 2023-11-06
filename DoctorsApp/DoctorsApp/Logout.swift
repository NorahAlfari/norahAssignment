//
//  Logout.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 20/04/1445 AH.
//

import SwiftUI

struct Logout: View {
    var body: some View {
        ZStack{
            
            Profile()
            Color.gray.opacity(0.50).ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 25)
               
                .fill(.white)
                .frame(width: 350, height: 450)
            VStack{
                ZStack{
                    Circle()
                        .fill(.color4)
                        .frame(width: 100, height: 100)
                    
                    Image(systemName: "ipad.and.arrow.forward")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.color)
                }
                Text("Are you sure to log out of your account?")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                
             
                
                Button(action: {
                  
                }) {
                    Text("Log Out")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 200, height: 70)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                       
                }
                
                Button(action: {
                  
                }) {
                    Text("Cancel")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 200, height: 70)
                        .foregroundColor(Color.color)
                        .background(Color.color1)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                       
                }
            }
            
            
        }
    }
}

#Preview {
    Logout()
}
