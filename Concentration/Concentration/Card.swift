//
//  Card.swift
//  Concentration
//
//  Created by Vasanthkumar V on 21/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueItentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueItentifier()
    }
}
