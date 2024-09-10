//
//  ContentView.swift
//  PlannedTime
//
//  Created by found on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            Group{
                TelaPrincipal()
                    .tabItem {
                        Image("Calendar1")
                        Text("Início")
                            .foregroundColor(Color("ColorU"))
                    }
                
                NavigationView {
                    CriarCronogramas() // CronogramaView
                }
                .tabItem {
                    Image("Create1")
                    Text("Criar")
                        .foregroundColor(Color("ColorU"))
                }
                
                NavigationView {
                    TelaCronogramas() // BuscaCursosView
                }
                .tabItem {
                    Image("Folder1")
                    Text("Criar")
                        .foregroundColor(Color("ColorU"))
                }
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color.black, for: .tabBar)
        }
    }
}


#Preview {
    ContentView()
}
