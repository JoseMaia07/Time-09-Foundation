//
//  TelaInicial.swift
//  PlannedTime
//
//  Created by found on 02/08/24.
//

import SwiftUI

struct TelaInicial: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("ColorBG1")
                    .edgesIgnoringSafeArea(.all)
                Image("BGTI")
                VStack {
                    Text("Seja Bem-Vindo(a)             ao app: ")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(17)
                    Image("CLogo")
                    Image("ampulheta")
                        .padding(.top, -100.0)
                    
                    Text("Planned time")
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: ContentView()){
                            Text("Avançar")
                                .font(.system(size: 21))
                                .foregroundColor(Color.white)
                            Image("Seta1")
                            
                        }

                    }
                    .padding(.horizontal, 20)
                    //.border(.red)
                    //O .border acima se refere ao botão para proxim tela, desative os comentarios para ver a line do botão criada pelo mentor
                }
                .padding(.vertical, 50)
                
            }
        }
    }
}

#Preview {
    TelaInicial()
}
