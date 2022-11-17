//
//  OpeningSceneViewModel.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import Foundation

class OpeningSceneViewModel: ObservableObject {
    
    @Published var randomizedOpeningScene: String = ""
    
    func randomizeOpeningScene() {
        let index: Int = Int.random(in: 1...openingScene.count)
        randomizedOpeningScene = openingScene[index]!
    }
    
}
