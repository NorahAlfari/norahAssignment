//
//  Message.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 19/04/1445 AH.
//

import SwiftUI

struct Message: View {
    var body: some View {
        HStack{
            Text("Message")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            Spacer()
            
            Image(systemName: "magnifyingglass")
        }.padding()
        
        HStack(spacing: 65){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("All")
                    .bold()
                    .foregroundStyle(Color.white)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.color)
                        .frame(width: 120, height: 40))
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Group")
                    .foregroundStyle(Color.black)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.color3)
                        .frame(width: 120, height: 40))
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Private")
                    .foregroundStyle(Color.black)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.color3)
                        .frame(width: 120, height: 40))
            })
        }.padding()
        
        
        VStack{
            HStack{
                Image("D2")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Dr. Marcus Horizon")
                            .bold()
                        Spacer()
                        Text("10:24")
                   
                    }
                    
                    HStack{
                        Text("I don,t have any fever, but headchace...")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                        Spacer()
                        Text("1")
                            .foregroundStyle(Color.white)
                            .background(Circle()
                                .fill(.color)
                                .frame(width: 20,height:20))
                    }
                }
                }
            
            
            HStack{
                Image("D2")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Dr. Alysa Hana")
                            .bold()
                        Spacer()
                        Text("09:04")
                   
                    }
                    
                    HStack{
                        Text("Hello, How can i help you?")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.gray)
                           
                    }
                }
                }
            
            HStack{
                Image("D4")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Dr. Maria Elena")
                            .bold()
                        Spacer()
                        Text("08:57")
                   
                    }
                    
                    HStack{
                        Text("Do you have fever?")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color.gray)
                           
                    }
                }
                }

        }.padding()
        
        
        
        Spacer()
        
        
    }
}

#Preview {
    Message()
}
