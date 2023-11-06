//
//  BookingDoctorSuccess.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 19/04/1445 AH.
//

import SwiftUI

struct BookingDoctorSuccess: View {
    var body: some View {
        ZStack{
            
            BookingDoctor()
            Color.gray.opacity(0.50).ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 25)
               
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
                Text("Payment Success")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                
                Text("Your payment has been successful, you can have a consultation session With your trusted doctor")
                    .font(.callout)
                    .foregroundColor(.color2)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                  
                }) {
                    Text("Chat Doctor")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 300, height: 70)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                       
                }
            }
        }
    }
}

#Preview {
    BookingDoctorSuccess()
}
