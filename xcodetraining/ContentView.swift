//
//  ContentView.swift
//  xcodetraining
//
//  Created by saad Mamode saeb on 03/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello World!").blur(radius: 0.0)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
 
