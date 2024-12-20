//
//  ContentView.swift
//  SFSymbolAnimations
//
//  Created by Manyuchi, Carrington C on 2024/12/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var clicked: Bool = false
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .symbolEffect(.bounce, value: clicked)
                .padding()
        }
        
        Button(action: {
            clicked.toggle()
        }, label: {
            Text("Click Me")
                .font(.headline)
                .foregroundStyle(.orange)
                .bold()
                .padding(.horizontal)
                .padding()
                .background(
                    Color.black
                )
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
