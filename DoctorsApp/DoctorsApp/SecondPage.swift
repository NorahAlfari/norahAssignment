//
//  SecondPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 08/04/1445 AH.
//

import SwiftUI

struct SecondPage: View {
    var body: some View {
        TabView{
            VStack{
                Button(action: {
                    
                }) {
                    Text("skip")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.color2)
                        .padding(.top, 10)
                        .padding(.bottom, 50)
                        .padding(.leading, 300)
                        .padding(.trailing, 15)}
                
                
                Image("img3")
                    .resizable()
                    .frame(width: 350, height: 450)
                   // .scaledToFit()
                Spacer()
                    .frame(height: 0)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 50)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.color1, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 350, height: 200)
                    
                    
                    Text("Consult only with a doctor you trust")
                        .font(.system(size: 25))
                        .multilineTextAlignment(.leading)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.bottom, 80)
                    
                    Button(action: {
                        print("Circular Button tapped")
                    }) {
                        Image(systemName:"arrow.right")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.color)
                            .clipShape(Circle())
                            .padding(.top, 60)
                            .padding(.bottom, 10)
                            .padding(.leading, 300)
                            .padding(.trailing, 15)
                    }
                   
                    RoundedRectangle(cornerRadius: 50)
                            .frame(width: 12, height: 4)
                            .foregroundColor(.color)
                            .padding(.top, 60)
                            .padding(.bottom, 10)
                            .padding(.leading, 0)
                            .padding(.trailing, 300)
                    
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 12, height: 4)
                        .foregroundColor(.color3)
                        .padding(.top, 60)
                        .padding(.bottom, 10)
                        .padding(.leading, 0)
                        .padding(.trailing, 270)
                   
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 12, height: 4)
                        .foregroundColor(.color3)
                        .padding(.top, 60)
                        .padding(.bottom, 10)
                        .padding(.leading, 0)
                        .padding(.trailing, 240)
                     }}
            VStack{
                
                Button(action: {
                    
                }) {
                    Text("skip")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.color2)
                        .padding(.top, 10)
                        .padding(.bottom, 50)
                        .padding(.leading, 300)
                        .padding(.trailing, 15)}
                
                
                Image("img1")
                    .resizable()
                    .frame(width: 350, height: 450)
                Spacer()
                    .frame(height: 0)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 50)
                    
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.color1, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 350, height: 200)
                    
                    
                    Text("Find a lot of specialist doctors in one place")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 25))
                        .padding()
                        .bold()
                        .foregroundColor(.black)
                        .padding(.bottom, 80)
                  
                    
                    Button(action: {
                        print("Circular Button tapped")
                    }) {
                        Image(systemName:"arrow.right")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.color)
                            .clipShape(Circle())
                            .padding(.top, 60)
                            .padding(.bottom, 10)
                            .padding(.leading, 300)
                            .padding(.trailing, 15)
                    }
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 12, height: 4)
                        .foregroundColor(.color3)
                        .padding(.top, 60)
                        .padding(.bottom, 10)
                        .padding(.leading, 0)
                        .padding(.trailing, 300)
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 12, height: 4)
                    .foregroundColor(.color)
                    .padding(.top, 60)
                    .padding(.bottom, 10)
                    .padding(.leading, 0)
                    .padding(.trailing, 270)
                    
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 12, height: 4)
                    .foregroundColor(.color3)
                    .padding(.top, 60)
                    .padding(.bottom, 10)
                    .padding(.leading, 0)
                    .padding(.trailing, 240)
                    
                }}
            VStack{
                
                Button(action: {
                    
                }) {
                    Text("skip")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.color2)
                        .padding(.top, 10)
                        .padding(.bottom, 50)
                        .padding(.leading, 300)
                        .padding(.trailing, 15)}
                
                
                Image("img2")
                    .resizable()
                    .frame(width: 350, height: 450)
                Spacer()
                    .frame(height: 0)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 50)
                    
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.color1, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 350, height: 200)
                    
                    
                    Text("Get connect our Online consultation")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.black)
                        .padding(.bottom, 80)
                    
                    Button(action: {
                        print("Circular Button tapped")
                    }) {
                        Image(systemName:"arrow.right")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.color)
                            .clipShape(Circle())
                            .padding(.top, 60)
                            .padding(.bottom, 10)
                            .padding(.leading, 300)
                            .padding(.trailing, 15)
                    }
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 12, height: 4)
                        .foregroundColor(.color3)
                        .padding(.top, 60)
                        .padding(.bottom, 10)
                        .padding(.leading, 0)
                        .padding(.trailing, 300)
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 12, height: 4)
                    .foregroundColor(.color3)
                    .padding(.top, 60)
                    .padding(.bottom, 10)
                    .padding(.leading, 0)
                    .padding(.trailing, 270)
                    
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 12, height: 4)
                    .foregroundColor(.color)
                    .padding(.top, 60)
                    .padding(.bottom, 10)
                    .padding(.leading, 0)
                    .padding(.trailing, 240)
                }}
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    SecondPage()
}
