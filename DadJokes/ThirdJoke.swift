//
//  ThirdJoke.swift
//  DadJokes
//
//  Created by Scholar on 8/21/23.
//

import SwiftUI

struct ThirdJoke: View {
    
    @State private var textTitle = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Last joke, I promise")
                Text(textTitle)
                Button("what do a tick and the eiffel tower have in common?") {
                    textTitle = "they're both paris sites"
                }
                Button ("what did the ocean say to the beach?") {
                    textTitle = "nothing, it just waved"
                }
                Button("Why couldn't the bicycle stand up on it's own?") {
                    textTitle = "it was two-tired"
                }
            }
        }
    
    }
}

struct ThirdJoke_Previews: PreviewProvider {
    static var previews: some View {
        ThirdJoke()
    }
}
