//
//  Arcticles.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 19/04/1445 AH.
//

import SwiftUI

struct Arcticles: View {
    @State var text = ""
    var body: some View {
        VStack{
            HStack{
                
                Image(systemName: "chevron.left")
                Spacer()
                Text("Arcticles")
                    .bold()
                Spacer()
                Image(systemName: "list.bullet")
                
                
            }.padding()
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color.color2)
                    .padding()
                TextField("Search...", text: $text)
            }.background(RoundedRectangle(cornerRadius: 25.0)
                .fill(.color1)
                .frame(height: 50))
            
            
            Text("Popular Articles")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
            
            
            
            ScrollView(.horizontal){
                HStack{
                    
                    ForEach(allItems2) { item in
                        
                        
                        Button(action: {
                            
                        }) {
                            Text(item.title)
                                .bold()
                                .font(.system(size: 20))
                                .frame(width: 150, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.color)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                    }
                }
            }
            
            HStack{
                
                Text("Trending Articles")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("See all")
                    .foregroundStyle(Color.color)
            }
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(allTrend) { item in
                        
                        VStack(alignment: .leading){
                            Image(item.imageName)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: 200,height: 120)
                            
                            Text("covid-19")
                                .foregroundStyle(Color.color)
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .fill(.color3)
                                    .frame(width: 80, height: 20))
                            
                            Text(item.title)
                                .font(.caption)
                                .bold()
                                
                            
                            Spacer()
                            
                            HStack{
                                Text(item.date)
                                    .foregroundStyle(Color.color2)
                                Text(item.time)
                                    .foregroundStyle(Color.color)
                                
                            }.font(.caption)
                            
                        }.padding()
                            .background(RoundedRectangle(cornerRadius:10)
                                .stroke(Color.color3)
                                
                            )
                    }
                }
            }
            
           
            
            HStack{
                
                Text("Related Articles")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("See all")
                    .foregroundStyle(Color.color)
            }
            
            ScrollView{
                VStack{
                    
                    ForEach(allRelated){ item in
                        HStack{
                            Image(item.imageName)
                                .resizable()
                                .frame(width: 80 , height:80)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            
                            VStack(alignment: .leading){
                                Text(item.title)
                                    .font(.caption)
                                    .bold()
                                
                                
                                HStack{
                                    Text(item.date)
                                        .foregroundStyle(Color.color2)
                                    Text(item.time)
                                        .foregroundStyle(Color.color)
                                    
                                }.font(.caption)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "archivebox.fill")
                                .foregroundStyle(Color.color)
                                .padding(.bottom,60)
                            
                            
                            
                        }.padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius:10)
                                .stroke(Color.color3)
                            )
                    }
                    
                }
                
            }
            
            
            
            
        }.padding()
    }
}


struct Item2: Identifiable {
    var id = UUID()
    var title: String
    
}

var allItems2 = [
    Item2( title:"Covid-19"),
    Item2( title:"Diet"),
    Item2( title:"Fitness"),
    Item2( title:"Covid-19"),
]


struct TrendArcticles: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var date: String
    var time: String
    
}

var allTrend = [
    TrendArcticles(imageName: "Image 8", title: "Comparing the \n AstraZeneca and \n Sinovac COVID-19 \n Vaccines", date: "Jun 12, 2022", time: "6 min read"),
    
    
    TrendArcticles(imageName: "Image 9", title: "The Horror Of The \n Second Wave Of\n COVID-19", date: "Jun 12, 2022", time: "6 min read"),
    
    TrendArcticles(imageName: "Image 8", title: "Comparing the \n AstraZeneca and \n Sinovac COVID-19 \n Vaccines", date: "Jun 10, 2022", time: "5 min read"),
]


struct RelatedArcticles: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var date: String
    var time: String
    
}

var allRelated = [
    RelatedArcticles(imageName: "Image 10", title: "Comparing the \n AstraZeneca and \n Sinovac COVID-19 \n Vaccines", date: "Jun 12, 2022", time: "6 min read"),
    
    
    RelatedArcticles(imageName: "Image 11", title: "The Horror Of The \n Second Wave Of\n COVID-19", date: "Jun 12, 2022", time: "6 min read"),
    
    RelatedArcticles(imageName: "Image 12", title: "Comparing the \n AstraZeneca and \n Sinovac COVID-19 \n Vaccines", date: "Jun 10, 2022", time: "5 min read"),
]


#Preview {
    Arcticles()
}
