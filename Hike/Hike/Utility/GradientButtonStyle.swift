//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Borja Suñen on 12/12/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding(.vertical)
        .padding(.horizontal, 30)
        .background(
            configuration.isPressed ? LinearGradient(
                colors: [.CustomGrayMedium, .CustomGrayLight],
                startPoint: .top,
                endPoint: .bottom)
            :
            LinearGradient(
                colors: [.CustomGrayLight, .CustomGrayMedium],
                startPoint: .top,
                endPoint: .bottom)
        )
        .cornerRadius(40)
    }
}
