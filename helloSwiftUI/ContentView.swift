//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Hello World!")
            Text("\(count)")
                .font(.largeTitle)
            Button("Increment") {
                count += 1
            }
        }
    }
}

#Preview {
    ContentView()
}
