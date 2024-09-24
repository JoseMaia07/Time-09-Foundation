import SwiftUI

struct TelaCronogramas: View {
    
    @State private var searchText: String = ""
    @State private var newPastaName: String = "" // Para armazenar o nome da nova pasta
    @State private var showAddPastaSheet: Bool = false // Para controlar a exibição da folha modal
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            return cronogramasList // retorna a lista completa
        } else {
            // filtra os items que contém o texto, ignorando se é MAISCULO ou minusculo
            return cronogramasList.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                // Alterar para uma cor predefinida, por exemplo, cinza
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                //  Texto("Rectangle31")
                    //.padding(.top, -438.0)
                
                VStack {
                    HStack {
                        
                    }
                    Spacer()
                    TextField("Pesquisar...", text: $searchText)
                        .padding(7)
                        .background(Color.colorBG2)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                        .listRowBackground(Color.black)
                        .padding(.horizontal)
                    List {
                        
                        ForEach(filteredItems, id: \.self) { nome in
                            NavigationLink(destination: Text(nome)) {
                                Text(nome)
                                    .foregroundColor(Color.white)
                                    .bold()
                            }
                            .padding()
                            .listRowBackground(Color("ColorBG2"))
                        }
                    }
                    .padding(.horizontal)
                    //.listStyle(.plain)
                    .scrollDisabled(false)
                    //.padding(.top, 10)
                    //.background(Color("ColorBG1").cornerRadius(20)) // Adicionando o arredondamento
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // Botão Criar
                    Button(action: {
                        showAddPastaSheet = true
                    }) {
                        Image(systemName: "plus")
                            .font(.headline)
                            .foregroundColor(Color("ColorU"))
                        
                    }.sheet(isPresented: $showAddPastaSheet) {
                        ZStack{
                            VStack{
                            Text("Criar Pastas")
                                .font(.system(size: 21))
                                //.padding(.top, -350)
                            
                            TextField("Nome da pasta", text: $newPastaName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 370, height: 35)
                               // .padding(.top, -270)
                            
                                HStack {
                                    Button("Cancelar") {
                                        showAddPastaSheet = false
                                    }
                                    .padding()
                                    
                                    Button("Adicionar") {
                                        if !newPastaName.isEmpty {
                                            cronogramasList.append(newPastaName)
                                            newPastaName = "" // Limpa o campo após adicionar
                                        }
                                        showAddPastaSheet = false
                                    }
                                }
                                .padding()
                                .presentationDetents([.height(250)])
                            }
                        }
                        
                    }
                }
            }
            .navigationTitle("Histórico")
            .navigationBarTitleDisplayMode(.inline)

        }
        

    }
}

#Preview {
    TelaCronogramas()
}


