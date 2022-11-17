//
//  ContentView.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var motiveVM = MotiveViewModel()
    @ObservedObject private var complicationVM = ComplicationsViewModel()
    
    var body: some View {
        VStack {
            Button("Motive") {
                motiveVM.randomizeMotive()
            }
            .buttonStyle(.bordered)
            .padding()
            
            if motiveVM.randomMotive != "" {
                Text("Motive: \(motiveVM.randomMotive)")
            }
            
            Button("Comlication For Hero") {
                complicationVM.randomizeComplications()
            }
            .buttonStyle(.bordered)
            .padding()
            
            if complicationVM.randomComplication != "" {
                Text("Motive: \(complicationVM.randomComplication)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
