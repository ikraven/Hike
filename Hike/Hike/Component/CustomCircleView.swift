//
//  CustomCircleView.swift
//  Hike
//
//  Created by Borja Suñen on 12/12/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatieGradient: Bool = false
    
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.CustomIndigoMedium,
                                 .CustomSalmonMedium],
                        startPoint: isAnimatieGradient ? .topLeading
                        :.bottomLeading,
                        endPoint: isAnimatieGradient ? .bottomTrailing
                        :.topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatieGradient.toggle()
                    }
                }
               
            MotionAnimationView()
        }.frame(width: 256, height: 256  )
    }
}

#Preview {
    CustomCircleView()
}
