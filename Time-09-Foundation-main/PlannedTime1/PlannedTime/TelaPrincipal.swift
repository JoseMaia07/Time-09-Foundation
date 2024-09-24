//
//  TelaPrincipal.swift
//  PlannedTime
//
//  Created by found on 02/08/24.
//

import SwiftUI


struct TelaPrincipal: View {
    @State private var showAddCronoSheet: Bool = false
    
    
    
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
                
                Button(action: {
                    showAddCronoSheet = true
                }) {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .foregroundColor(Color("ColorU"))
                        .frame(height: 350)
                    
                }.sheet(isPresented: $showAddCronoSheet) {
                    ZStack{
                        VStack{
                            Text("Criar Cronogramas")
                                .font(.system(size: 21))
                                .padding()
                                .presentationDetents([.height(250)])
                        }
                        
                        
                        
                        
                    }
                    
                    
                }
                
            }
        }
    }
}
#Preview {
    TelaPrincipal()
}
