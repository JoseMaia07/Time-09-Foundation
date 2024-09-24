//
//  CriarCronogramas.swift
//  PlannedTime
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct CriarCronogramas: View {
    
    @State private var nomecronograma = " "
    @State private var showAddAtivSheet: Bool = false
    @StateObject private var viewModel = CronogramaViewModel()
    @State private var nomeatividade = ""
    @State private var dataAtividade = Date()
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("ColorBG1")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Image("Rectangle31")
                    .padding(.top, -480.0)
                Text("Criar Cronograma")
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorU"))
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
                    })
                    .padding(.top, 80)
                             
                
                
                HStack{
                    NavigationLink(destination: TelaIA()){
                        Text("Criar com IA")
                            .font(.system(size: 21))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Image("BBot1")
                    }
                    .padding(.top, 550)
                    
                }
                .padding(.trailing, 100.0)
                
                Button(action:{
                    showAddAtivSheet = true
                }){
                    Image("Create1")
                    Text("Adicionar uma atividade")
                        .fontWeight(.bold)
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                       
                }
                .padding(.leading, -100)
                .padding(.top, -180)
                .font(.system(size: 17))
                .fontWeight(.semibold)
                    }.sheet(isPresented: $showAddAtivSheet) {
                        Text("Atividades")
                            .foregroundColor(Color("ColorU"))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 21))
                            .padding(.top, -140)
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color("ColorBG2"))
                                .frame(height: 35)
                                .frame(width: 370)
                                .padding(.top, -155)
                            
                            TextField("Nome da Atividade", text: $nomeatividade)
                                .padding(.horizontal)
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                                .fontWeight(.medium)
                                .padding(.top, -150)
                            
                            DatePicker("Date", selection: $dataAtividade, displayedComponents: [.date, .hourAndMinute])
                                .background()
                                .labelsHidden()
                                .padding(.top, -80)
                                .padding(.leading, -100)
                            
                            Button(action: {
                                viewModel.addCronograma(title: nomeatividade, date: dataAtividade)
                                nomeatividade = ""
                                
                            }) {
                                Text("Adicionar Atividade")
                                    .padding()
                                    .background(Color("ColorU"))
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .cornerRadius(8)
                            }
                            .padding(.top, 40)
                            
                            Button("Cancelar") {
                                showAddAtivSheet = false
                            }
                            .padding(.top, 160)

                        }

                    
                    .presentationDetents([.height(500)])
                        

                
                
                

                
                
            }

            
        }
       
    }


private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter
}()}

#Preview {
    CriarCronogramas()
}
