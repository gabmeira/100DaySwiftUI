//
//  ContentView.swift
//  WeSplit
//
//  Created by Gabriel Bruno Meira on 01/02/24.
//

import SwiftUI

struct Overview: View {
    
    @State private var tapCount = 0
    @State private var name = ""
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            //            Form {
            //
            //                Section {
            //                    Text("Hello, world!")
            //                    Text("Hello, world!")
            //                    Text("Hello, world!")
            //                }
            //                Section {
            //                    Text("Hello, world!")
            //                    TextField("Enter your name", text: $name)
            //                    Text("Your name is \(name)")
            //                }
            //
            //            }
            //            .navigationTitle("SwiftUI")
            //            .navigationBarTitleDisplayMode(.inline)
            //
            //        }
            //
            //        Button("Tap Count: \(tapCount)") {
            //            self.tapCount += 1
            //        }
            
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    Overview()
}
