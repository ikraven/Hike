//
//  CustomBackgorundView.swift
//  Hike
//
//  Created by Borja Suñen on 8/12/24.
//

import SwiftUI

struct CustomBackgorundView: View {
    var body: some View {
        ZStack {
            // MARK: - 2. DEPTH
            Color.CustomGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 3. LIGHT
            Color.CustomGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)   
            // MARK: - 3. SURFACE
            
            LinearGradient(
                colors: [
                    .CustomGreenLight,
                    .CustomGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgorundView()
        .padding()
}
