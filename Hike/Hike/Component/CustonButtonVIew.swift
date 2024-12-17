//
//  CustonButtonVIew.swift
//  Hike
//
//  Created by Borja Suñen on 12/12/24.
//

import SwiftUI

struct CustonButtonVIew: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.white, .CustomGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [.CustomGrayLight, .CustomGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                    ,lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.CustomGrayLight, .CustomGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustonButtonVIew()
        .previewLayout(.sizeThatFits)
        .padding()
}
