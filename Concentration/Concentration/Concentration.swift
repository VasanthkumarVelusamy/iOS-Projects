//
//  Concentration.swift
//  Concentration
//
//  Created by Vasanthkumar V on 21/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    var oneAndOnlyFaceUpCardIndex: Int?
    func chooseCard(at index: Int) {
        if let matchedIndex = oneAndOnlyFaceUpCardIndex, matchedIndex != index {
            if cards[matchedIndex].identifier == cards[index].identifier {
                cards[matchedIndex].isMatched = true
                cards[index].isMatched = true
            }
            cards[index].isFaceUp = true
            
            oneAndOnlyFaceUpCardIndex = nil
        }
        else {
            for faceDownIndex in cards.indices {
                cards[faceDownIndex].isFaceUp = false
            }
            cards[index].isFaceUp = true
            oneAndOnlyFaceUpCardIndex = index
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
}
