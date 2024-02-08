//
//  ContentView.swift
//  WeSplit
//
//  Created by Gabriel Bruno Meira on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var valorGorjeta: Double {
        let peopleCounts = Double(numberOfPeople + 2)
        let tipSelections = Double(tipPercentage)
        
        let tipValues = checkAmount / 100 * tipSelections
        let grandTotals = checkAmount + tipValues
        
        return grandTotals
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    //                    .pickerStyle(.navigationLink)
                }
                
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) { percentage in
                            Text("\(percentage)%")
                        }
                    }
                }
                    .pickerStyle(.navigationLink)
//                    .pickerStyle(.segmented)
                    
                Section("Amount per people") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Valor Real + Gorjeta") {
                    Text(valorGorjeta, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                .navigationTitle("WeSplit")
                .toolbar {
                    if amountIsFocused {
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
