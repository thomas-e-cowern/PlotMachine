//
//  MotiveViewModel.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import Foundation

class MotiveViewModel: ObservableObject {
    
    @Published var randomMotive: String = ""
    
    func randomizeMotive() {
        let index: Int = Int.random(in: 1...motive.count)
        print("Index: \(index)")
        randomMotive = motive[index]!
    }
    
    
}
