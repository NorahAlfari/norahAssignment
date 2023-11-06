//
//  TwentyPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 18/04/1445 AH.
//

import SwiftUI

struct FindDoctors: View {
    @State var text = ""
    
    let col = [GridItem(.fixed(90)) , GridItem(.fixed(90)), GridItem(.fixed(90)), GridItem(.fixed(90))]
    
    var body: some View {
        VStack(spacing: 24.0){
            HStack{
                
                Image(systemName: "chevron.left")
                    Spacer()
                    .frame(width: 120)
                Text("Find Doctors")
                    .bold()
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color.color2)
                TextField("Search...", text: $text)
            }.background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.color1)
                .frame(height: 50))
            
            Text("Category")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            LazyVGrid(columns: col , spacing: 10){
                
                ForEach(allCategory) { item in
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.color1)
                                .frame(width: 60,height: 60)
                            Image(systemName:item.imageName)
                                .foregroundStyle(Color.color)
                            
                        }
                        Text(item.title)
                            .foregroundStyle(Color.gray)
                            .font(.caption2)
                    }
                }
                
            }
            
            
            Text("Recommended Doctors")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Image("D1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Text("Dr.Marcus Horizon")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Chaldiologist")
                        .foregroundStyle(Color.gray)
                        .font(.caption2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Divider()
                        .frame(width: 200)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
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
                    } .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                }
                
            }.background(RoundedRectangle(cornerRadius: 25)
                .stroke(Color.color2,lineWidth: 1)
                .frame(width: 380, height: 120))
            
            
            Text("Your Recent Docors")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
                
            ScrollView(.horizontal){
                HStack{
                    ForEach(allIDoctor) { d in
                        
                        VStack{
                            Image(d.imageName)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                            Text(d.doctorName)
                                .font(.callout)
                            
                        }
                    }
                    
                }
            }
            
            
            
        }.padding()
    }
}

struct Category: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
 
}

var allCategory = [
    Category(imageName: "stethoscope", title:"General"),
    Category(imageName: "waveform.path.ecg", title:"lungs Specialist"),
    Category(imageName: "vial.viewfinder", title:"Dentist"),
    Category(imageName: "bubbles.and.sparkles", title:"Psychiatrist"),
    Category(imageName: "facemask", title:"Covid-19"),
    Category(imageName: "syringe", title:"Surgeon"),
    Category(imageName: "waveform.path.ecg", title:"Cardiologis"),
]





#Preview {
    FindDoctors()
}



