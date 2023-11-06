//
//  Pharmacy.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 20/04/1445 AH.
//

import SwiftUI

struct Pharmacy: View {
    @State var text = ""
    var body: some View {
       
        HStack{
            
            Image(systemName: "chevron.left")
            Spacer()
            Text("Pharmacy")
                .bold()
            Spacer()
            Image(systemName: "cart")
            
            
        }.padding()
        
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color.color2)
                .padding()
            TextField("Search...", text: $text)
        }.background(RoundedRectangle(cornerRadius: 25.0)
            .fill(.color1)
            .frame(height: 50))
        
        HStack{
            VStack(alignment: .leading){
                Text("Order quickly with Prescription")
                    .bold()
                    .font(.title2)
                    .padding()
                
                Button(action: {
                    
                }) {
                    Text("Upload Prescription")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    
                    
                }.padding()
            }
            Image("Image 13")
                .resizable()
                .frame(width: 150, height: 150)
               
            
        }.background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(.color3.opacity(0.5)))
        
        
        HStack{
            
            Text("Popular Product")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("See all")
                .foregroundStyle(Color.color)
        }.padding()
        
        
        
        ScrollView(.horizontal){
            HStack {
            ForEach(allProduct){ P in
               
                    VStack{
                        Image(P.image)
                            .resizable()
                            .frame(width: 80, height: 80)
                        
                       
                            VStack(alignment: .leading){
                                Text(P.title)
                                    .bold()
                                
                                Text(P.count)
                                    .font(.caption)
                                    .foregroundStyle(Color.gray)
                                HStack{
                                    Text(P.price)
                                        .bold()
                                    Spacer()
                                    
                                    Image(systemName: "plus.app.fill")
                                        .foregroundStyle(Color.color)
                                        
                                }
                            }.padding(8)
                        
                    }.background(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.color3)
                        .frame(width: 130))
                    .padding(10)
                }
            }
        }
        
       
        HStack{
            
            Text("Product on Sale")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("See all")
                .foregroundStyle(Color.color)
        }.padding()
      
        
        ScrollView(.horizontal){
            HStack {
            ForEach(allProduct){ P in
               
                    VStack{
                        Image(P.image)
                            .resizable()
                            .frame(width: 80, height: 80)
                        
                       
                            VStack(alignment: .leading){
                                Text(P.title)
                                    .bold()
                                
                                Text(P.count)
                                    .font(.caption)
                                    .foregroundStyle(Color.gray)
                                HStack{
                                    Text(P.price)
                                        .bold()
                                    
                                    Text(P.price)
                                        .font(.caption2)
                                        .foregroundStyle(Color.gray)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "plus.app.fill")
                                        .foregroundStyle(Color.color)
                                        
                                }
                            }.padding(6)
                        
                    }.background(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.color3)
                        .frame(width: 130))
                    .padding(6)
                }
            }
        }
        
        
        
        
        
        
        
    }
}




struct Product: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var count: String
    var price: String
    
}

var allProduct = [
    Product( image: "Image 14", title: "Panadol", count: "20pcs", price: "$15.99"),
    Product( image: "Image 15", title: "Bodrex Herbal", count: "100ml", price: "$7.99"),
    Product( image: "Image 16", title: "Konidin", count: "3pcs", price: "$5.99"),
    Product( image: "Image 17", title: "OBH Combi", count: "75ml", price: "$9.99"),
   
]


#Preview {
    Pharmacy()
}
