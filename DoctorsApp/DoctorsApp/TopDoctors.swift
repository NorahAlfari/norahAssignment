//
//  TwelvePage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 17/04/1445 AH.
//

import SwiftUI

struct TopDoctors: View {
    var body: some View {
        
        ScrollView{
            VStack{
                ForEach(allIDoctor) { doctor in
                    HStack{
                        Image(doctor.imageName)
                            .resizable()
                            .frame(width: 100, height: 140)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding(.horizontal)
                        
                        VStack{
                            
                            Text(doctor.doctorName)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text(doctor.doctorMajor)
                                .foregroundStyle(Color.gray)
                                .font(.caption2)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(Color.color)
                                    Text(doctor.doctorRate)
                                        .foregroundStyle(Color.color)
                                }.background(RoundedRectangle(cornerRadius: 4)
                                    .fill(.color3.opacity(0.25)))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            HStack{
                                Image(systemName: "mappin.and.ellipse")
                                    .foregroundStyle(Color.gray)
                                    
                                Text("\(doctor.doctorLocation) away")
                                    .foregroundStyle(Color.gray)
                                    .font(.caption2)
                            }.frame(maxWidth: .infinity, alignment: .leading)
                                
                        }
                        
                    }.background(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.color2,lineWidth: 1)
                        .frame(width: 350, height: 150))
                    .padding()
                }
            }
        }
    }
}
#Preview {
    TopDoctors()
}
