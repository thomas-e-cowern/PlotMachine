//
//  ActOfVillanViewModel.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import Foundation

class ActOfVillanViewModel: ObservableObject {
    
    @Published var randomAct: String = ""
    
    func randomizeActOfVillan() {
        
        let index: Int = Int.random(in: 1...actOfVillan.count)

        randomAct = actOfVillan[index]!
        
    }
    
}
