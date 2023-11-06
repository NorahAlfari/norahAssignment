//
//  TwentyTwoPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 18/04/1445 AH.
//

import SwiftUI

struct BookingDoctor: View {
    var body: some View {
        VStack{
            HStack{
                
                Image(systemName: "chevron.left")
                
                
                Text("Appointment")
                    .bold()
                    .padding(.horizontal, 80)
                Image(systemName: "list.bullet")
                
                
            }.padding()
            
            
            HStack{
                Image("D2")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                VStack(alignment: .leading){
                    Text("Dr.Marcus Horizon")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Chaldiologist")
                        .foregroundStyle(Color.gray)
                        .font(.caption2)
                    
                    
                    
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundStyle(Color.color)
                        Text("4.7")
                            .foregroundStyle(Color.color)
                        
                    }.background(RoundedRectangle(cornerRadius: 4)
                        .fill(.color3.opacity(0.25)))
                    
                    
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundStyle(Color.gray)
                        
                        Text("800m away")
                            .foregroundStyle(Color.gray)
                            .font(.caption2)
                    }
                }
                
            }.background(RoundedRectangle(cornerRadius: 25)
                .stroke(Color.color2,lineWidth: 1)
                .frame(width: 380, height: 120))
            .padding(.vertical)
            
            
            
            HStack{
                Text("Date")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("change")
                    .foregroundStyle(Color.gray)
            }
            
            HStack{
                Image(systemName: "calendar")
                    .foregroundStyle(Color.color)
                    .background(Circle()
                        .fill(.color3.opacity(0.50))
                        .frame(width: 50, height: 50))
                Spacer()
                
                Text("Wednesday ,Jun 23| 10:00AM")
                    .bold()
                
            }.padding(.horizontal)
            .padding(.vertical)
            
            Divider()
            
            
            HStack{
                Text("Reason")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("change")
                    .foregroundStyle(Color.gray)
            }
            
            HStack{
                Image(systemName: "book.pages")
                    .foregroundStyle(Color.color)
                    .background(Circle()
                        .fill(.color3.opacity(0.50))
                        .frame(width: 50, height: 50))
                Spacer()
                
                Text("Chest pain")
                    .bold()
                
            }.padding(.horizontal)
            .padding(.vertical)
            
            Divider()
            
            
          
                  
            VStack(spacing: 20.0){
                
                Text("Payment Detail")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Text("Consultation")
                        .foregroundStyle(Color.gray)
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$60.00")
                        .foregroundStyle(Color.black)
                }
                
                HStack{
                    Text("Admin Fee")
                        .foregroundStyle(Color.gray)
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$01.00")
                        .foregroundStyle(Color.black)
                }
                HStack{
                    Text("Aditional Discount")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("-")
                        .foregroundStyle(Color.black)
                }
                HStack{
                    Text("Total")
                        .foregroundStyle(Color.black)
                        .bold()
                    
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$61.00")
                        .bold()
                        .foregroundStyle(Color.color)
                }
                
            }
            
            Text("Payment Method")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
            
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
                    Text("Booking")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 250, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                       
                }

            }.padding(.vertical)
            
            
            
            
            
            
        }.padding()
    }
}

#Preview {
    BookingDoctor()
}
