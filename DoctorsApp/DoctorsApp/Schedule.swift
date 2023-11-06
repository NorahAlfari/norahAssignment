//
//  Schedule.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 19/04/1445 AH.
//

import SwiftUI

struct Schedule: View {
    @State private var choice = 0
    var body: some View {
        VStack{
        HStack{
            Text("Schedule")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            Spacer()
            
            Image(systemName: "bell")
        }.padding()
        
        HStack(spacing: 35){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Upcoming")
                    .bold()
                    .foregroundStyle(Color.white)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.color)
                        .frame(width: 120, height: 40))
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Completed")
                    .foregroundStyle(Color.black)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.color3)
                        .frame(width: 120, height: 40))
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Canceled")
                    .foregroundStyle(Color.black)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.color3)
                        .frame(width: 120, height: 40))
            })
        }.padding()
        
        
        
        VStack{
            
            HStack{
                
                VStack(alignment: .leading){
                    Text("Dr.Marcus Horizon")
                        .bold()
                    Text("Chardiologist")
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                Image("D2")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }.padding()
            
            
            HStack{
                Image(systemName: "calendar")
                Text("26/06/2022")
                    .font(.caption)
                
                Image(systemName: "clock")
                Text("10:30 AM")
                    .font(.caption)
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 10,height: 10)
                    .foregroundColor(.green)
                Text("Confirmed")
                    .font(.caption)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.horizontal)
            
            HStack{
                Button(action: {
                    
                }) {
                    Text("Send")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 160, height: 50)
                        .foregroundColor(Color.black.opacity(0.50))
                        .background(Color.color3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
                Button(action: {
                    
                }) {
                    Text("Reschedule")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 160, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }.padding(.horizontal)
            
        }.padding(.vertical)
        .background(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray))
            
            
            
            VStack{
                
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Dr. Alysa Hana")
                            .bold()
                        Text("Psikeater")
                            .foregroundStyle(Color.gray)
                    }
                    Spacer()
                    Image("D3")
                        .resizable()
                        .frame(width: 80,height: 80)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }.padding()
                
                
                HStack{
                    Image(systemName: "calendar")
                    Text("28/06/2022")
                        .font(.caption)
                    
                    Image(systemName: "clock")
                    Text("2:00 PM")
                        .font(.caption)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 10,height: 10)
                        .foregroundColor(.green)
                    Text("Confirmed")
                        .font(.caption)
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.horizontal)
                
                HStack{
                    Button(action: {
                        
                    }) {
                        Text("Send")
                            .bold()
                            .font(.system(size: 20))
                            .frame(width: 160, height: 50)
                            .foregroundColor(Color.black.opacity(0.50))
                            .background(Color.color3)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                    Button(action: {
                        
                    }) {
                        Text("Reschedule")
                            .bold()
                            .font(.system(size: 20))
                            .frame(width: 160, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.color)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }.padding(.horizontal)
                
            }.padding(.vertical)
            .background(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray))
        
            
            Spacer()
            
        }.padding()
        
        
        
    }
}

#Preview {
    Schedule()
}
