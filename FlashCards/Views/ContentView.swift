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
    
    
    //What was the previous card
    @State var previousCard = listOfCards.randomElement()!
    
    //This controls whether the answer is visible
    @State var isAnswerShowing = false
    
    
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
                withAnimation {
                    isAnswerShowing = true
                }
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            //Show answer
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //CONDITION                   TRUE  FALSE
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            //show a new question
            Button(action: {
                //Keep track of the previous question
                previousCard = currentCard
                
                //Loop forever until it picks a different new card
                //Use the condition to say "keep looping when the condition is true"
                while previousCard == currentCard {
                    //get another question
                        currentCard = listOfCards.randomElement()!
                }
                
                //Hide the answer
                isAnswerShowing = false
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
                .opacity(isAnswerShowing ? 1.0 : 0.0)
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
