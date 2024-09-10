//
//  TelaCronogramas.swift
//  PlannedTime
//
//  Created by found on 02/08/24.
//

import SwiftUI

struct TelaCronogramas: View {
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("ColorBG1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Image("Rectangle31")
                    .padding(.top, -438.0)
                Text("Pastas")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorU"))
                    .padding(.top, -370.0)
                
                List(cronogramasList, id: \.self) {
                        nome in NavigationLink(destination: Text(nome)) {
                            Image(systemName: "circle")
                            Text(nome)
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                            
                        }
                            .padding()
                            .listRowBackground(Color("ColorBG2"))
                }.listStyle(.plain)
                    .padding(.top, 160)
                    
                
                
                
                
                
                

                
                
            }
            

            
        }
        
    }
}

#Preview {
    TelaCronogramas()
}
