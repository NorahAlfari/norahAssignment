//
//  Ambulance.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 20/04/1445 AH.
//

import SwiftUI


struct Ambulance: View {
   
    var body: some View {
        
        HStack{
            
            Image(systemName: "chevron.left")
            Spacer()
            Text("Ambulance")
                .bold()
            Spacer()
            
        }.padding()
        
        ZStack{
            
            Image("Image 18")
                .resizable()
                .ignoresSafeArea()
            
            
            
            
            VStack(alignment: .leading){
                Text("Confirm your addrees")
                    .bold()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    
                Divider()
                    
                HStack{
                   Image(systemName: "mappin")
                        .foregroundColor(.red)
                    
                    Text("2640 Cabin Creek Rd #102 Alexandria,Virginia (VA), 22314 ")
                   
                        .foregroundColor(.gray)
                    }
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Confirm Loction")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 370, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                }
                
                
            }.background( RoundedRectangle(cornerRadius: 15)
                .fill(.color1)
                .frame(width: 380,height: 200))
            .padding(.top, 500)
            .padding()
            
                
                
                
               
                
                
                
            
        }
        
 
        
        
    }
}

#Preview {
    Ambulance()
}
