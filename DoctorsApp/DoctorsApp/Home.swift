//
//  ElvenPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 17/04/1445 AH.
//

import SwiftUI

struct Home: View {
    @State var text = ""
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 24.0){
                Text("Find your desire health solution")
                    .bold()
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color.color2)
                    TextField("Search...", text: $text)
                }.background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(.color1)
                    .frame(height: 50))
                
                
                HStack{
                    
                    ForEach(allItems) { item in
                        
                        
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.color1)
                                    .frame(width: 80,height: 60)
                                Image(systemName: item.imageName)
                                    .foregroundStyle(Color.color)
                                
                            }
                            Text(item.title)
                                .foregroundStyle(Color.gray)
                        }
                    }
                }
                
                HStack{
                    VStack(spacing: 24.0){
                        Text("Early protection for your family healthy")
                            .bold()
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Learn more")
                                .bold()
                                .foregroundStyle(Color.white)
                                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color.color)
                                    .frame(width: 150,height: 40))
                        })
                    }
                    
                    Image("D1")
                        .resizable()
                        .frame(width: 150,height: 150)
                        .clipShape(Circle())
                    
                    
                }.background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(Color.color3.opacity(0.25))
                    .frame(width: 380,height: 200))
                .padding(.vertical)
                
                HStack{
                    Text("Top Doctor")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("See all")
                            .foregroundStyle(Color.color)
                    })
                    
                }
               
                
                ScrollView(.horizontal){
                    
                    
                    
                    HStack{
                        ForEach(allIDoctor) { doctor in
                            
                            
                            VStack{
                                Image(doctor.imageName)
                                    .resizable()
                                    .frame(width: 90,height: 90)
                                    .clipShape(Circle())
                                
                                Text(doctor.doctorName)
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text(doctor.doctorMajor)
                                    .foregroundStyle(Color.gray)
                                    .font(.caption2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack{
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundStyle(Color.color)
                                        Text(doctor.doctorRate)
                                            .foregroundStyle(Color.color)
                                    }.background(RoundedRectangle(cornerRadius: 4)
                                        .fill(.color3.opacity(0.25)))
                                    
                                    HStack{
                                        Image(systemName: "mappin.and.ellipse")
                                            .foregroundStyle(Color.gray)
                                        
                                        Text("\(doctor.doctorLocation) away")
                                            .foregroundStyle(Color.gray)
                                            .font(.caption2)
                                    }
                                    
                                    
                                    
                                    
                                    
                                }
                            }.background(RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.color2,lineWidth: 1)
                                .frame(width: 170, height: 195))
                            
                        }.padding()
                        
                    }
                    
                }
                
                
                
                HStack{
                    Text("Health article")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("See all")
                            .foregroundStyle(Color.color)
                    })
                    
                }.padding(.horizontal)
                
                
                
                
            }.padding()
        }
    }
}


//تكرار كود الاول
struct Item: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
  
}
var allItems = [
    Item(imageName: "stethoscope", title:"Doctor"),
    Item(imageName: "pill", title:"Pharmacy"),
    Item(imageName: "cross.case", title:"Hospital"),
    Item(imageName: "cross.fill", title:"Ambulance"),
]

//تكرار الدكتور
struct Doctor: Identifiable {
    var id = UUID()
    var imageName: String
    var doctorName: String
    var doctorMajor: String
    var doctorRate: String
    var doctorLocation: String
 
}

var allIDoctor = [
    Doctor(imageName: "D2", doctorName: "Dr.Marcus Horizon", doctorMajor: "Chaldiologist", doctorRate: "4.7", doctorLocation: "800m"),
    Doctor(imageName: "D3", doctorName: "Dr.Maria Elena", doctorMajor: "Psychologist", doctorRate: "4.9", doctorLocation: "1.5km"),
    Doctor(imageName: "D4", doctorName: "Dr.Stevi Jesi", doctorMajor: "Orthopedist", doctorRate: "4.8", doctorLocation: "2km"),
    Doctor(imageName: "D5", doctorName: "Dr.Gerty Cori", doctorMajor: "Orthopedist", doctorRate: "4.7", doctorLocation: "800m"),
    Doctor(imageName: "D6", doctorName: "Dr.Dindra", doctorMajor: "Orthopedist", doctorRate: "4.7", doctorLocation: "800m"),
]





#Preview {
    Home()
}
