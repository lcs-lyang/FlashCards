//
//  ContentView.swift
//  FlashCards
//
//  Created by Lillian Yang on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            //Show question
            Text("What is the \"powerhouse\" of a cell?")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                //Reveal the answer
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            //Show answer
            Text("Mitochondria")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //show a new question
            Button(action: {
                //Hide the answer
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
