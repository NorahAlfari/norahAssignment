//
//  TwentyOnePage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 18/04/1445 AH.
//

import SwiftUI

struct DoctorDetail: View {
    let col = [GridItem(.fixed(120)) , GridItem(.fixed(120)), GridItem(.fixed(120))]
    var body: some View {
        
        VStack{
            HStack{
                
                Image(systemName: "chevron.left")
                
                
                Text("Doctors Detail")
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
                
            }.padding(.vertical)
            
            Text("About")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Text("""
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...
                 """)
                .font(.caption)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.leading)
                }
            
            
            ScrollView (.horizontal){
                
                HStack{
                    ForEach(allDate) { d in
                        
                        VStack{
                            Text(d.dayName)
                            Text(d.dayNumber)
                        }.background(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.color3)
                            .frame(width: 50,height: 60))
                        .padding()
                    }
                }
            }
            
            Divider()
           
            LazyVGrid(columns: col , spacing: 10){
                ForEach(allTime) { time in
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text(time.time)
                            .foregroundStyle(Color(time.textColor))
                    }).background(RoundedRectangle(cornerRadius:25)
                        .stroke(Color(time.strokeColor))
                        .fill(time.backColor)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 40))
                    .padding()
                    
                }
            }.padding()
            
            
            HStack{
                Image(systemName: "ellipsis.message")
                    .foregroundStyle(Color.color)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.color3)
                        .frame(width: 50, height: 50))
                Spacer()
                
                Button(action: {
                  
                }) {
                    Text("Book Apointment")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width: 280, height: 60)
                        .foregroundColor(Color.white)
                        .background(Color.color)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                       
                }

            }.padding()
          
        }.padding()
    }
}

struct Date: Identifiable {
    var id = UUID()
    var dayName: String
    var dayNumber: String
 
}

var allDate = [
    Date(dayName: "Mon", dayNumber:"21"),
    Date(dayName: "Tue", dayNumber:"22"),
    Date(dayName: "Wed", dayNumber:"23"),
    Date(dayName: "Thu", dayNumber:"24"),
    Date(dayName: "Fri", dayNumber:"25"),
    Date(dayName: "Sat", dayNumber:"26"),
]

struct Time: Identifiable {
    var id = UUID()
    var time: String
    var textColor: Color
    var backColor: Color
    var strokeColor: Color
 
}

var allTime = [
    Time(time: "9:00 AM", textColor: .color1 , backColor: .clear , strokeColor: .color1),
    Time(time: "10:00AM", textColor: .black , backColor: .clear , strokeColor: .color),
    Time(time: "11:00 AM", textColor: .color1 , backColor: .clear , strokeColor: .color1),
    Time(time: "1:00 PM", textColor: .color1 , backColor: .clear , strokeColor: .color1),
    Time(time: "2:00 PM", textColor: .white , backColor: .color , strokeColor: .clear),
    Time(time: "3:00 PM", textColor: .black , backColor: .clear , strokeColor: .color),
    Time(time: "4:00 PM", textColor: .black , backColor: .clear , strokeColor: .color),
    Time(time: "7:00 PM", textColor: .black , backColor: .clear , strokeColor: .color),
    Time(time: "8:00 PM", textColor: .color1 , backColor: .clear , strokeColor: .color1),
]



#Preview {
    DoctorDetail()
}
