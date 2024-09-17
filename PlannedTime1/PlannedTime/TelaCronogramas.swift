import SwiftUI

struct TelaCronogramas: View {
    
    @State private var searchText: String = ""
    
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
                    .padding(.top, -438.0)
                
                VStack {
                    HStack {
                        
                    }
                    Spacer()
                    TextField("Pesquisar...", text: $searchText)
                        .padding(7)
                        .background(Color.colorBG1)
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
                    .scrollDisabled(true)
                    //.padding(.top, 10)
                    //.background(Color("ColorBG1").cornerRadius(20)) // Adicionando o arredondamento
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // Botão Criar
                    Button(action: {
                        // Ação do botão Criar
                    }) {
                        Image(systemName: "plus")
                            .font(.headline)
                            .foregroundColor(Color("ColorU"))
                        
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


