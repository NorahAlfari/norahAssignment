//
//  Drugs.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 20/04/1445 AH.
//

import SwiftUI

struct Drugs: View {
    var body: some View {
        
        HStack{
            
            Image(systemName: "chevron.left")
            Spacer()
            Text("Pharmacy")
                .bold()
            Spacer()
            Image(systemName: "cart")
            
            
        }.padding()
        
        
        Image("Image 15")
            .resizable()
            .frame(width: 300, height: 300)
          
        Text("OBH Combi")
            .font(.title2)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        
        HStack{
            Text("75ml")
                .foregroundStyle(Color.gray)
            Spacer()
            
            Image(systemName: "heart.fill")
                .foregroundStyle(Color.red)
            
            
        }.padding(.horizontal)
        
        
        HStack{
            Image(systemName: "star.fill")
                .foregroundStyle(Color.color)
            Image(systemName: "star.fill")
                .foregroundStyle(Color.color)
            Image(systemName: "star.fill")
                .foregroundStyle(Color.color)
            Image(systemName: "star.fill")
                .foregroundStyle(Color.color)
            
            Text("4.0")
                .bold()
                .foregroundStyle(Color.color)
            
        }.padding(.trailing,220)
        
        HStack{
          Image(systemName: "minus")
                .foregroundStyle(Color.gray)
            
            Text("1")
                .bold()
            
            Image(systemName: "plus.app.fill")
                .resizable()
                .frame(width: 30, height: 30)
            
                .foregroundStyle(Color.color)
            Spacer()
            
            Text("$9.99")
                .bold()
            
            
        }.padding(.horizontal)
        
        
        Text("Description")
            .font(.title3)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(8)
        
        
        Text("OBH COMBI  is a cough medicine containing, Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing... Read more")
            .font(.caption)
            .foregroundStyle(Color.gray)
            .padding(.horizontal)
        
        Spacer()
        
        HStack{
            
            Image(systemName: "cart")
                .foregroundColor(.color)
                .background(RoundedRectangle(cornerRadius: 5)
                    .fill(.color3)
                    .frame(width:50, height: 50))
            
           
            Spacer()
            
            Button(action: {
              
            }) {
                Text("Buy Now")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.color)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                   
            }
        }.padding()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    Drugs()
}
