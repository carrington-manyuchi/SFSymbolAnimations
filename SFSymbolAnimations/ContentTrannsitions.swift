//
//  ContentTrannsitions.swift
//  SFSymbolAnimations
//
//  Created by Manyuchi, Carrington C on 2024/12/18.
//

import SwiftUI

struct ContentTrannsitions: View {
    
    @State private var clicked = false
    @State private var pauseGlobe = false
    @State private var runCount = false
    @State private var layerAnimate = false
    @State private var animationRunning = false
    
    var body: some View {
        HStack {
            Image(systemName: clicked ? "person.fill" : "globe")
                .imageScale(.large)
                .symbolEffectsRemoved(pauseGlobe)
                .symbolEffect(.bounce, value: clicked)
                .contentTransition(
                    .symbolEffect(.replace.byLayer.downUp)
                )
            
            Image(systemName: clicked ? "person.fill" : "globe")
                .imageScale(.large)
                .symbolEffectsRemoved(pauseGlobe)
                .symbolEffect(.bounce, value: clicked)
                .contentTransition(
                    .symbolEffect(.replace.byLayer.downUp)
                )
        }
        
        // Buttons:
        
        
        HStack {
            Button {
                clicked.toggle()
            } label: {
                Text("Click Me")
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .bold()
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.black)
                    )
            }

            Button {
                clicked.toggle()
            } label: {
                Text("Pause Globe")
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .bold()
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.black)
                    )
            }

        }
    }
}

#Preview {
    ContentTrannsitions()
}
