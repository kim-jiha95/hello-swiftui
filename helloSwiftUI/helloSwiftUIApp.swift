//
//  helloSwiftUIApp.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

@main
struct helloSwiftUIApp: App {
    
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
                ContentView()        .environment(AppState())
        }
    }
}
