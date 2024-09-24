//
//  TelaPrincipal1.swift
//  PlannedTime
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct TelaPrincipal1: View {
    
    @StateObject private var viewModel = CronogramaViewModel()
    @State private var newCronogramaTitle = ""
    @State private var newCronogramaDate = Date()
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                Color("ColorBG1")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Meu Cronograma")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding()
                    Rectangle()
                        .fill(Color.colorBG2)
                        .frame(width: 300, height: 300)
                        .cornerRadius(50)
                        .overlay(VStack{
                            List(viewModel.cronogramas) {
                                cronograma in VStack(alignment: .leading){
                                    Text(cronograma.title)
                                        .font(.headline)
                                    Text("\(cronograma.date, formatter: dateFormatter)")
                                        .font(.subheadline)
                                    
                                    
                                }
                            }
                        }
                                 
                            .padding()
                        )
                        .padding()
                    
                    HStack {
                        TextField("Nome da Atividade", text: $newCronogramaTitle)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        DatePicker("Date", selection: $newCronogramaDate, displayedComponents: [.date, .hourAndMinute])
                            .background()
                            .labelsHidden()
                        
                    }
                    .padding()
                    
                    Button(action: {
                        viewModel.addCronograma(title: newCronogramaTitle, date: newCronogramaDate)
                        newCronogramaTitle = ""
                    }) {
                        Text("Adicionar Atividade")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    
                }
            }
        }}
        
        private let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .short
            return formatter
        }()}

#Preview {
    TelaPrincipal1()
}
