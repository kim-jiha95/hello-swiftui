//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

struct ContentView: View {
     
    @State private var search: String = ""
    @State private var friends: [String] = ["John", "Mary", "Steven", "Steve", "Jerry"]
    
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        VStack {
            List(filteredFriends, id: \.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                if search.isEmpty {
                    filteredFriends = friends
                } else {
                    filteredFriends = friends.filter { $0.contains(search) }
                }
            }
            
            Spacer()
        }.padding()
        .onAppear(perform: {
            filteredFriends = friends
        })
        .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
