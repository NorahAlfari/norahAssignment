//
//  AudioCall.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 19/04/1445 AH.
//

import SwiftUI

struct AudioCall: View {
    var body: some View {
        ZStack{
            Image("Image 5")
                .resizable()
                .ignoresSafeArea()
               
            
            Rectangle()
                .background(.ultraThinMaterial)
                .ignoresSafeArea()
            
            VStack{
                
                Image("Image 5")
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.vertical,200)
               
                
                Text("00:05:14")
                    .foregroundStyle(Color.white)
                    .padding(.vertical,50)
                    
                
                
                
                HStack(spacing: 50.0){
                    Image(systemName: "video")
                        .foregroundColor(.white)
                        .background(Circle()
                            .fill(.gray.opacity(0.50))
                            .frame(width: 50,height: 50))
                    
                    Image(systemName: "phone")
                        .foregroundColor(.white)
                        .background(Circle()
                            .fill(.red.opacity(0.50))
                            .frame(width: 50,height: 50))
                    
                    Image(systemName: "mic")
                        .foregroundColor(.white)
                        .background(Circle()
                            .fill(.gray.opacity(0.50))
                            .frame(width: 50,height: 50))
                    
                }
                
                Spacer()
                    .frame(height: 50)
                
                Image(systemName: "chevron.up")
                    .foregroundColor(.white)
                
                Text("Swipe back to menu")
                    .foregroundStyle(Color.white)
                    
                    
                   
            }
        }
    }
}

#Preview {
    AudioCall()
}
