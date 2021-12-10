//
//  ContentView.swift
//  FlashCards
//
//  Created by Lillian Yang on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    //Store the card to work with
    //It is randomly selected from the list of cards
    @State var currentCard = listOfCards.randomElement()!
    
    
    //MARK: COMPUTED PROPERTIES
    
    
    var body: some View {
        ScrollView {
            //Show question
            Text(currentCard.question)
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
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //show a new question
            Button(action: {
                //get another question
                currentCard = listOfCards.randomElement()!
                
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
