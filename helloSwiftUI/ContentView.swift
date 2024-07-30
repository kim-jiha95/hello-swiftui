//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "ON" : "OFF")
            }).fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(isOn ? .black : .red)
    }
}

#Preview {
    ContentView()
}
