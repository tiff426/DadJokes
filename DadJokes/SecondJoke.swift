//
//  SecondJoke.swift
//  DadJokes
//
//  Created by Scholar on 8/21/23.
//

import SwiftUI

struct SecondJoke: View {
    
    @State private var textTitle = "Pick your poison"
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 50) {
                Text("Wanna hear a joke?")
                Text(textTitle)
                Button("why did the fish blush?") {
                    textTitle = "because it saw the ocean's bottom"
                }
                .tint(.cyan)
                Button("what do you call a pig that does karate?") {
                    textTitle = "a pork chop"
                }
                Button("how do you count cows?") {
                    textTitle = "with a COWculator"
                }
                NavigationLink(destination: ThirdJoke()) {
                    Text("Third joke")
                    .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct SecondJoke_Previews: PreviewProvider {
    static var previews: some View {
        SecondJoke()
    }
}
