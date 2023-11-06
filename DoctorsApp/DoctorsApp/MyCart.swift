//
//  MyCart.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 20/04/1445 AH.
//

import SwiftUI

struct MyCart: View {
    var body: some View {
        
        VStack{
            HStack{
                
                Image(systemName: "chevron.left")
                Spacer()
                Text("My Cart")
                    .bold()
                Spacer()
                
            }.padding()
            
            
            
            ForEach(someProduct){ some in
                HStack{
                    Image(some.image)
                        .resizable()
                        .frame(width: 80,height: 80)
                    
                    
                    VStack{
                        
                        HStack{
                            Text(some.title)
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            Image(systemName: "arrow.up.bin")
                                .foregroundColor(.gray)
                        }
                        
                        
                        Text(some.count)
                            .foregroundStyle(Color.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
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
                            
                            Text(some.price)
                                .bold()
                            
                        }
                    }.padding()
                }.background(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.color3))
                .padding()
                
            }
            
            VStack(spacing: 20.0){
                
                Text("Payment Detail")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Text("Subtotal")
                        .foregroundStyle(Color.gray)
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$60.00")
                        .foregroundStyle(Color.black)
                }
                
                HStack{
                    Text("Taxes")
                        .foregroundStyle(Color.gray)
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$01.00")
                        .foregroundStyle(Color.black)
                }
                
                HStack{
                    Text("Total")
                        .foregroundStyle(Color.black)
                        .bold()
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$61.00")
                        .bold()
                    
                }
                
            }.padding()
            
            
            
            Text("Payment Method")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            HStack{
                Text("VISA")
                    .bold()
                Spacer()
                    .frame(width:200)
                Text("change")
                    .foregroundStyle(Color.gray)
                
            }.background(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.color2,lineWidth: 1)
                .frame(width: 350, height: 60))
            .padding(.vertical)
            
            
            HStack{
                VStack{
                    Text("Total")
                        .foregroundStyle(Color.gray)
                    Text("$61.00")
                        .bold()
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Checkout")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 250, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                }
                
            }.padding()
            
            
            
            
            
            
            
            
        }
        
        
        
    }
}



var someProduct = [
    Product( image: "Image 17", title: "OBH Combi", count: "75ml", price: "$9.99"),
    Product( image: "Image 14", title: "Panadol", count: "20pcs", price: "$15.99"),
    
   
]

#Preview {
    MyCart()
}
