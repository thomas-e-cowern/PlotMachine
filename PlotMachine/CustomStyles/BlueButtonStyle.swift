//
//  BlueButtonStyle.swift
//  PlotMachine
//
//  Created by Thomas Cowern on 11/17/22.
//

import Foundation
import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}
