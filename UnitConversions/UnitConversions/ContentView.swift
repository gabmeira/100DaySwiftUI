//
//  ContentView.swift
//  UnitConversions
//
//  Created by Gabriel Bruno Meira on 08/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numeroUsuario = 0.0
    @State private var conversao = ["metros", "quilômetros", "pés", "jardas", "milhas"]
    @State private var resultado = "teste"
    
    var body: some View {
        Form {
            Section {
                Text("App Unit Conversions")
            }
            
//            Section("conversão de comprimento") {
               
//            }
            
            /* 
            
            Se você estivesse optando pela conversão de comprimento, você poderia ter:

            Um controle segmentado para metros, quilômetros, pés, jardas ou milhas para a unidade de entrada.
            Um segundo controle segmentado para metros, quilômetros, pés, jardas ou milhas, para a unidade de saída.
            Um campo de texto onde os usuários inserem um número.
            Uma visualização de texto mostrando o resultado da conversão.
             
            */
            
            Section {
                TextField("0", value: $numeroUsuario, format: .number)
                    .keyboardType(.decimalPad)
            }
        }
        
        Picker("seletor", selection: $conversao) {
            ForEach(conversao, id: \.self) {
                Text("\($0)")
            }
        }
        .pickerStyle(.menu)
        .padding()
    }
}

#Preview {
    ContentView()
}
