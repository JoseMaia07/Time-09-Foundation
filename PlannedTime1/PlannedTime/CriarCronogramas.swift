//
//  CriarCronogramas.swift
//  PlannedTime
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct CriarCronogramas: View {
    
    @State private var nomecronograma = " "
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("ColorBG1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Image("Rectangle31")
                    .padding(.top, -480.0)
                Text("Criar Cronograma")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .font(.system(size:21))
                    .padding(.top, -365.0)
                Text("Digite o nome do cronograma                  ")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 21))
                    .padding(.top, -285)
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color("ColorBG2"))
                        .frame(height: 35)
                        .frame(width: 370)
                    
                    TextField("Nome do Cronograma", text: $nomecronograma)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .fontWeight(.medium)
                    
                }
                .padding(.top, -250)
                HStack{
                    NavigationLink(destination: TelaIA()){
                        Text("Criar com IA")
                            .font(.system(size: 21))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Image("BBot1")
                    }
                    .padding(.top, 750)
                    
                }
                .padding(.trailing, 100.0)

                
                
                

                
                
            }

            
        }
       
    }
}

#Preview {
    CriarCronogramas()
}
