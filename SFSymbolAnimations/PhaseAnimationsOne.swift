//
//  PhaseAnimationsOne.swift
//  SFSymbolAnimations
//
//  Created by Manyuchi, Carrington C on 2024/12/18.
//

import SwiftUI

struct AnimateProperties: Equatable {
    let color: Color
    let bgColor: Color
    let font: Font
    let fontweight: Font.Weight
    let cornerRadius: CGFloat
    let xScale: CGFloat
    let yScale: CGFloat
    let offsetY: CGFloat
    let rotate: CGFloat
}

struct PhaseAnimationsOne: View {
    
    @State private var animateMe: Bool = false
    @State private var currentPhaseIndex: Int = 0
    let phases: [AnimateProperties] = [
        .init(
            color: .red,
            bgColor: .black,
            font: .largeTitle,
            fontweight: .semibold,
            cornerRadius:  20,
            xScale: 1,
            yScale: 1.5,
            offsetY: 0,
            rotate: 30
        ),
        .init(
            color: .blue,
            bgColor: .green,
            font: .body,
            fontweight: .regular,
            cornerRadius: 0,
            xScale: 1.5,
            yScale: 1,
            offsetY: 50,
            rotate: 60
        ),
        .init(
            color: .purple,
            bgColor: .black,
            font: .largeTitle,
            fontweight: .bold,
            cornerRadius:  50,
            xScale: 1,
            yScale: 1,
            offsetY: -20,
            rotate: 0
        )
    ]
    
    var body: some View {
        Spacer()
        Text("Hello, World!")
            .phaseAnimator(phases, trigger: animateMe) { view,
                phase in view
                    .foregroundStyle(phase.color)
                    .font(phase.font)
                    .fontWeight(phase.fontweight)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: phase.cornerRadius)
                            .fill(phase.bgColor.gradient)
                        
                    )
                    .scaleEffect(x: phase.xScale, y: phase.yScale)
                    .offset(y: phase.offsetY)
                    .rotation3DEffect(Angle(degrees: phase.rotate), axis: (x: 1.0, y: 0.0, z: 0.0))
            }
        Spacer()
        
        Button {
            animateMe.toggle()
        } label: {
            Text(animateMe ? "Stop Animation" : "Play Animation")
        }
    }
}

#Preview {
    PhaseAnimationsOne()
}
