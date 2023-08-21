//
//  ContentView.swift
//  DadJokes
//
//  Created by Scholar on 8/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //navigation stack whever you want there ot be a transition
        NavigationStack {
            VStack (spacing: 50) {
                Text("Wanna hear some jokes")
                //nav link inside nav stack
                //destination is where you want to go, label is what the navigtionlink can be labeled
                //remember to use Text
                NavigationLink(destination: FirstJoke()) {
                    Text("yes! let's hear some jokes")
                        .font(.title)
                        .foregroundColor(.orange)
                    Text("lfg")
                        .foregroundColor(Color(red: 0.534, green: 0.0, blue: 0.583))
                        
                        
                }
            }
            .toolbar {
                // nesting the nav link for the toolbar inside toober item group .status pushes toolbar to bottom
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: FirstJoke()) {
                        Text("First Joke")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    NavigationLink(destination: SecondJoke()) {
                        Text("Second Joke")
                    }
                    NavigationLink(destination: ThirdJoke()) {
                        Text("Third Joke")
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            //delete all this if you want toolbar but don't want title to display
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline) // makes title less clunky
            .navigationBarHidden(false) //hides navigation title on that page, but should be false if using tolbar
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
