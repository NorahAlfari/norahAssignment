//
//  NinePage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 17/04/1445 AH.
//

import SwiftUI
import Combine

struct Verification: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var num3 = ""
    @State var num4 = ""
    @State var isclick1: Bool = false
    @State var isclick2: Bool = false
    @State var isclick3: Bool = false
    @State var isclick4: Bool = false
    
    var body: some View {
        
        VStack{
            Text("Enter Verification Code")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Enter code that we have sent to your number ")
                .foregroundStyle(Color.gray)
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                
                //firs
                Button(action: {
                    isclick1.toggle()
                }, label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(isclick1 ? Color.color
                                    :  Color.clear)
                            .background(isclick1 ? Color.white : Color.color1)
                            .clipShape( RoundedRectangle(cornerRadius: 15))
                            .frame(width: 60, height: 60)
                            
                        
                        
                        NumericTextField(text: $num1)
                    }
                })
                
                //second
                Button(action: {
                    isclick2.toggle()
                    
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(isclick2 ? Color.color
                                    :  Color.clear)
                            .background(isclick2 ? Color.white : Color.color1)
                            .clipShape( RoundedRectangle(cornerRadius: 15))
                            .frame(width: 60, height: 60)
                            
                        
                        
                        NumericTextField(text: $num2)
                    }
                })
                
                
                
                //thired
                Button(action: {isclick3.toggle()
                }, label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(isclick3 ? Color.color
                                    :  Color.clear)
                            .background(isclick3 ? Color.white : Color.color1)
                            .clipShape( RoundedRectangle(cornerRadius: 15))
                            .frame(width: 60, height: 60)
                            
                        
                        
                        NumericTextField(text: $num3)
                    }
                    
                })
                
                //fourth
                Button(action: {
                    isclick4.toggle()
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(isclick4 ? Color.color
                                    :  Color.clear)
                            .background(isclick4 ? Color.white : Color.color1)
                            .clipShape( RoundedRectangle(cornerRadius: 15))
                            .frame(width: 60, height: 60)
                            
                        
                        
                        NumericTextField(text: $num4)
                    }
                    
                })
                }.padding()
            
            
            Button(action: {
              
            }) {
                Text("Verify")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 380, height: 60)
                    .foregroundColor(Color.white)
                    .background(Color.color)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                   
            }
            
            
            HStack{
                
                Text("Don't receive the code?")
                    .foregroundStyle(Color.gray)
                    .font(.title3)
                
                Button(action: {
                  
                }) {
                    Text("Resend")
                        .foregroundStyle(Color.color)
                       
                       
                }
                
            }
            
            
            
        }.padding()
    }
}




struct NumericTextField: View {
    @Binding var text: String

    var body: some View {
        TextField("", text: $text)
            .keyboardType(.numberPad)
            .onReceive(Just(text)) { newString in
               
                let filtered = newString.filter { "0123456789".contains($0) }
                if filtered != newString {
                    self.text = filtered
                }
            }
    }
}

#Preview {
    Verification()
}
