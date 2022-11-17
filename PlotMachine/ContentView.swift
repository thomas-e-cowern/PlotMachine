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
    @ObservedObject private var actofVillanVM = ActOfVillanViewModel()
    @ObservedObject private var twistVM = TwistsViewModel ()
    @ObservedObject private var openingSceneVM = OpeningSceneViewModel()
    
    var body: some View {
        VStack {
            Button("Motive") {
                motiveVM.randomizeMotive()
            }
            .buttonStyle(BlueButton())
            .padding()
            
            if motiveVM.randomMotive != "" {
                Text("Motive: \(motiveVM.randomMotive)")
            } else {
                Text("Click Motive for a motive!")
            }
            
            Button("Comlication For Hero") {
                complicationVM.randomizeComplications()
            }
            .buttonStyle(BlueButton())
            .padding()
            
            if complicationVM.randomComplication != "" {
                Text("Complication: \(complicationVM.randomComplication)")
            } else {
                Text("Click Complication for a complication")
            }
            
            Button("Act of Villan") {
                actofVillanVM.randomizeActOfVillan()
            }
            .buttonStyle(BlueButton())
            .padding()
            
            if actofVillanVM.randomAct != "" {
                Text("Act of Villan: \(actofVillanVM.randomAct)")
            } else {
                Text("Click Act of Villan")
            }
            
            Button("Twists") {
                twistVM.randomizeTwist()
            }
            .buttonStyle(BlueButton())
            .padding()
            
            if twistVM.randomTwist != "" {
                Text("Twist: \(twistVM.randomTwist)")
            } else {
                Text("Click for twist")
            }
            
            Button("Opening Scene") {
                openingSceneVM.randomizeOpeningScene()
            }
            .buttonStyle(BlueButton())
            .padding()
            
            if openingSceneVM.randomizedOpeningScene != "" {
                Text("Opening Scene: \(openingSceneVM.randomizedOpeningScene)")
            } else {
                Text("Click for an opening scene")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
