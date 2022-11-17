//
//  ComplitcationViewModel.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import Foundation

class ComplicationsViewModel: ObservableObject {
    
    @Published var randomComplication: String = ""
    
    func randomizeComplications() {
        let index: Int = Int.random(in: 1...complicationsForHero.count)
        print("Index: \(index)")
        randomComplication = complicationsForHero[index]!
    }
    
    
}
