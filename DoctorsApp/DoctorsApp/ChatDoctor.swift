//
//  ChatDoctor.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 19/04/1445 AH.
//

import SwiftUI

struct ChatDoctor: View {
    @State var text = ""
    var body: some View {
       
        
            VStack(spacing: 20.0){
                
                
                HStack{
                    Image(systemName: "chevron.left")
                    Text("Dr.Marcus Horizon")
                        .bold()
                        .padding(.trailing, 80)
                    
                    Image(systemName: "video.fill")
                    Image(systemName: "phone.fill")
                    Image(systemName: "list.bullet")
                }.padding(.vertical)
                
                VStack{
                    Text("Consultion Start")
                        .bold()
                        .foregroundStyle(Color.color)
                    Text("You can consult your problem to the doctor")
                        .foregroundStyle(Color.gray)
                        .font(.caption)
                }.background(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.color3)
                    .frame(width: 343,height: 75))
                .padding(.vertical)
                
                ScrollView {
                    VStack{
                        
                        HStack{
                            Image("D1")
                                .resizable()
                                .frame(width: 80,height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment: .leading){
                                Text("Dr.Marcus Horizon")
                                    .bold()
                                    .foregroundStyle(Color.black)
                                
                                Text("10 min age")
                                    .foregroundStyle(Color.gray)
                                
                            }
                        }
                        Text("Hello, How can i help you?")
                            .foregroundStyle(Color.gray)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .fill(.color3)
                                .frame(width: 220, height: 50))
                            .padding(.vertical,10)
                        
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    
                    
                    Text("""
    I have suffering from headache \n and cold for 3 days, I took 2 \n tablets of dolo, but still pain
    """)
                    .foregroundStyle(Color.white)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.color)
                        .frame(width: 280, height: 80))
                    .padding(.vertical,10)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                    
                    
                    VStack{
                        
                        HStack{
                            Image("D1")
                                .resizable()
                                .frame(width: 80,height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment: .leading){
                                Text("Dr.Marcus Horizon")
                                    .bold()
                                    .foregroundStyle(Color.black)
                                
                                Text("5 min age")
                                    .foregroundStyle(Color.gray)
                                
                            }
                        }
                        Text("Ok, Do you have fever? is the headchace severe")
                            .foregroundStyle(Color.gray)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .fill(.color3)
                                .frame(width: 260, height: 70))
                            .padding(.vertical,10)
                        
                        
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    
                    
                    Text("""
                     I don,t have any fever, but \n headchace is painful
                     """)
                    .foregroundStyle(Color.white)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.color)
                        .frame(width: 280, height: 80))
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    
                    VStack(alignment: .leading) {
                        HStack{
                            Image("D1")
                                .resizable()
                                .frame(width: 80,height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment: .leading){
                                Text("Dr.Marcus Horizon")
                                    .bold()
                                    .foregroundStyle(Color.black)
                                
                                Text("10 min age")
                                    .foregroundStyle(Color.gray)
                                
                            }
                        }
                        Image("Typing")
                            .resizable()
                            .frame(width: 50, height: 30)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    
                }
                HStack{
                    
                    HStack{
                        TextField("Type message...", text: $text)
                            .padding(.leading)
                        Image(systemName: "paperclip")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                        
                    }
                    .background(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.color1)
                        .frame(width: 250, height:50)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    )
                    
                    Button(action: {
                      
                    }) {
                        Text("Send")
                            .bold()
                            .font(.system(size: 20))
                            .frame(width: 100, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.color)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                           
                    }
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
            }.padding()
        
    }
}
#Preview {
    ChatDoctor()
}
