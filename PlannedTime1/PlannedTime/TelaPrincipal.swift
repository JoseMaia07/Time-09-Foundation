//
//  TelaPrincipal.swift
//  PlannedTime
//
//  Created by found on 02/08/24.
//

import SwiftUI

struct TelaPrincipal: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("ColorBG1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Image("Retangulo Roxo")
                
                Text("Principal                                        ")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding(.top, -350.0)

                
                    
            }

            
        }
        
    }
}

#Preview {
    TelaPrincipal()
}
