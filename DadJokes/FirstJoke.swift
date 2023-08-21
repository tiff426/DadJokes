//
//  FirstJoke.swift
//  DadJokes
//
//  Created by Scholar on 8/21/23.
//

import SwiftUI

struct FirstJoke: View {
    
    @State private var textTitle = "Take your pick!"
    // you can't have a varibale for image but you can have a variable for imageName!!
    @State private var imageName = ""
    // trial of changing text size when button is pressed
    @State private var textSize = 20
    
    var body: some View {
        // wherever you want there to be a nav link, you need to add a nav stack
        NavigationStack {
            VStack (spacing: 30) {
                Text("Wanna hear a joke?")
                Button ("What did the baby corn say to it's mom? ") {
                    textTitle = "Where's my POPcorn"
                }
                Button("What does a nosey pepper do?") {
                    textTitle = "Gets jalapeño business"
                }
                Button("What's orange and sounds like a parrot? ") {
                    textTitle = "A carrot!"
                    imageName = "carrot"
                    // changing textSize
                    textSize = 40
                    
                }
                Text(textTitle)
                    // using textSize variable
                    .font(.system(size: CGFloat(textSize)))
                Image(imageName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                NavigationLink(destination: SecondJoke()) {
                    Text("Second joke")
                }
            }
            .padding()
        }
        
    }
}

struct FirstJoke_Previews: PreviewProvider {
    static var previews: some View {
        FirstJoke()
    }
}
