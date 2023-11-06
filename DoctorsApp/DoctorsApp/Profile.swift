//
//  Profile.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 20/04/1445 AH.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack{
            Color.color.ignoresSafeArea()
            
            
            
            VStack{
                Image("Image 19")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                Text("Amelia Renata")
                    .bold()
                    .foregroundStyle(Color.white)
                
                HStack{
                    
                    VStack{
                        Image(systemName: "heart.fill")
                        Text("Heart Rate")
                            .font(.caption)
                        Text("215bpm")
                            .bold()
                        
                        
                    }.foregroundColor(.white)
                        .padding()
                    
                    Divider()
                        .frame(height: 60)
                        .overlay(.white)
                    
                    
                    VStack{
                        Image(systemName: "gauge.with.needle")
                        Text("Calories")
                            .font(.caption)
                        Text("756cal")
                            .bold()
                        
                        
                    }.foregroundColor(.white)
                        .padding()
                    
                    Divider()
                        .frame(height: 60)
                        .overlay(.white)
                    
                    
                    VStack{
                        Image(systemName: "dumbbell")
                        Text("Weight")
                            .font(.caption)
                        Text("103lbs")
                            .bold()
                        
                        
                    }.foregroundColor(.white)
                        .padding()
                    
                }.padding()
            }.padding(.bottom,280)
            
            VStack{
                
                HStack{
                    
                    Image(systemName: "heart")
                        .foregroundColor(.color)
                        .background(Circle()
                            .fill(.color3)
                            .frame(width: 40,height:40))
                    
                    Text("My Saved")
                        .padding(.horizontal)
                        .bold()
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }.padding(.horizontal)
                
                Divider()
                    .padding()
                
                
                
                HStack{
                    
                    Image(systemName: "book.pages")
                        .foregroundColor(.color)
                        .background(Circle()
                            .fill(.color3)
                            .frame(width: 40,height:40))
                    
                    Text("Appointmnet")
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }.padding()
                
                Divider()
                    .padding(.horizontal)
                
                
                HStack{
                    
                    Image(systemName: "book.pages")
                        .foregroundColor(.color)
                        .background(Circle()
                            .fill(.color3)
                            .frame(width: 40,height:40))
                    
                    Text("Payment Method")
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }.padding()
                
                Divider()
                    .padding(.horizontal)
                
                
                HStack{
                    
                    Image(systemName: "ellipsis.message")
                        .foregroundColor(.color)
                        .background(Circle()
                            .fill(.color3)
                            .frame(width: 40,height:40))
                    
                    Text("FAQs")
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }.padding()
                
                Divider()
                    .padding(.horizontal)
                
                
                
                HStack{
                    
                    Image(systemName: "exclamationmark.shield")
                        .foregroundStyle(Color.red)
                        .background(Circle()
                            .fill(.color3)
                            .frame(width: 40,height:40))
                    
                    Text("Logout")
                        .foregroundStyle(Color.red)
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }.padding()
            }
            .background(RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(width: 395, height: 450))
            .padding(.top,400)
            
        }
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    Profile()
}
