//
//  ContentView.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var motiveVM = MotiveViewModel()
    
    var body: some View {
        VStack {
            Button("Motive") {
                motiveVM.randomizeMotive()
            }
            .buttonStyle(.bordered)
            .padding()
            
            Text("Motive: \(motiveVM.randomMotive)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
