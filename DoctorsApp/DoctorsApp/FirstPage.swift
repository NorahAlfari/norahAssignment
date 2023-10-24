//
//  FirstPage.swift
//  DoctorsApp
//
//  Created by Norah Alfari on 08/04/1445 AH.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        ZStack{
           /*طريقة علي للون الخلفية
            color("color")
               .ignorSaveArea()
        
*/
            Text("")
              .frame(maxWidth: .infinity, maxHeight: .infinity)
              .background(.color)
            
        VStack{
                
               
                Image(systemName: "command")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
            
            Text("معسكر Swift ")
                .font(.system(size: 50))
                .bold()
                .foregroundColor(.white)

                }
           
        }
    }
}

#Preview {
    FirstPage()
}
