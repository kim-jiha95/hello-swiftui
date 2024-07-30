//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

// Pre iOS 17
class AppState: ObservedObject {
    @Published var isOn: Bool = false
}
struct LightBulbView: View {
    
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow: .black)
            Button("Toggle") {
                appState.isOn.toggle()
            }
        }
    }
}

struct LightRoomView: View {
    
    var body: some View {
        LightBulbView()
    }
}

struct ContentView: View {
    
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .black: .white)
    }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
