//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                .frame(width: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
