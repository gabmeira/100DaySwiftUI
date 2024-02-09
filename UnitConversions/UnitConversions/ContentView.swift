//
//  ContentView.swift
//  UnitConversions
//
//  Created by Gabriel Bruno Meira on 08/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numeroUsuario = 0.0
    @State private var menuInicio = "metros"
    @State private var resultado = "teste"
    
    let conversao = ["metros", "quilômetros", "pés", "jardas", "milhas"]
    
    var resultado: Double {
// Aqui vou fazer a lógica de conversão. Dica converter tudo que o usuário mandar em um item e depois converter para o que ele quer. 
    }
    
    var body: some View {
        Form {
            Section {
                Text("App Unit Conversions")
            }
            
            Section("Unidade entrada") {
                Picker("seletor", selection: $menuInicio) {
                    ForEach(conversao, id: \.self) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(.palette)
            }
            
            Section("Valor para conversão") {
                TextField("0", value: $numeroUsuario, format: .number)
                    .keyboardType(.decimalPad)
            }
            
            Section("Unidade saída") {
                Picker("seletor", selection: $menuInicio) {
                    ForEach(conversao, id: \.self) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(.palette)
            }
            
            Section("Resultado") {
                TextField("0", value: $numeroUsuario, format: .number)
                    .keyboardType(.decimalPad)
            }
            
            
            
            /*
            
            Se você estivesse optando pela conversão de comprimento, você poderia ter:

            Um controle segmentado para metros, quilômetros, pés, jardas ou milhas para a unidade de entrada.
            Um segundo controle segmentado para metros, quilômetros, pés, jardas ou milhas, para a unidade de saída.
            Um campo de texto onde os usuários inserem um número.
            Uma visualização de texto mostrando o resultado da conversão.
             
            */
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
