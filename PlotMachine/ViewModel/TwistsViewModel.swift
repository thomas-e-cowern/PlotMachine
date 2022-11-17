//
//  TwistsViewModel.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import Foundation

class Twists: ObservableObject {
    
    @Published var randomTwist: String = ""
    
    func randomizeTwist() {
        let index: Int = Int.random(in: 1...twists.count)
        randomTwist = twists[index]!
    }
    
}
