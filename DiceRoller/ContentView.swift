//
//  ContentView.swift
//  DiceRoller
//
//  Created by Даниил Игумнов on 05.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .bold()
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) { _ in DiceView()
                }
            }
            HStack {
                Button("Remove", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backColour)
        .tint(.black)
    }
}

#Preview {
    ContentView()
}
