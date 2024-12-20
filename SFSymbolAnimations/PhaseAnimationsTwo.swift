//
//  PhaseAnimationsTwo.swift
//  SFSymbolAnimations
//
//  Created by Manyuchi, Carrington C on 2024/12/19.
//

import SwiftUI

struct PhaseAnimationsTwo: View {
    var body: some View {
        
        ZStack {
            LinearGradient(
                colors: [.yellow, .green],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        }
       
    }
}

#Preview {
    PhaseAnimationsTwo()
}


