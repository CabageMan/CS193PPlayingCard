//
//  PlayingCardDeck.swift
//  CS193PPlayingCard
//
//  Created by ViktorsMacbook on 24.01.19.
//  Copyright © 2019 Viktor Bednyi Inc. All rights reserved.
//

import Foundation

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}


struct PlayingCardDeck {
    
    private (set) var cards = [PlaingCard]()
    
    init() {
        for suit in PlaingCard.Suit.all {
            for rank in PlaingCard.Rank.all {
                cards.append(PlaingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func drawCard() -> PlaingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
    
}
