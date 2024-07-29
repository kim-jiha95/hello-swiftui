//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("costa-rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            AsyncImage(url: URL(string:"https://plus.unsplash.com/premium_photo-1721651435483-4e0cabf4d186?q=80&w=2054&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!) {
                image in image.resizable()
            } placeholder: {
                Text("Downloading...")
            }
            Text("First Line")
                .foregroundStyle(.cyan)
                .font(.title3)
                .padding([.top, .bottom], 20)
            Text("Second Line")
                .foregroundStyle(.green)
            Text("Third Line")
            HStack {
                Text("Left")
                Text("Right")
                    .fontWeight(.heavy)
            }
        }.foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
