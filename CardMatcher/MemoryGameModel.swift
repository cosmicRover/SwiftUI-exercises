//
//  MemoryGame.swift
//  CardMatcher
//
//  Created by Joy Paul on 5/23/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import Foundation

struct MemoryGameModel<CardContent>{/* a made uptype for card game, must set type on parent struct*/
    var cards: Array<Card>
    
    /* init takes the pairs of cards and a function with Int param that returns a CardContent*/
    init(pairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for index in 0..<pairsOfCards{
            let content = cardContentFactory(index)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: index))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: index*2 + 1)) // TODO: fix problem with duplicate id
        }
    }
    
    /* nesting structs inside structs. MemoryGame.Card */
    struct Card: Identifiable{ /* Identifiable is a protocol, requires an id */
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        var id: Int
    }
    
    /* Since cards conform to the Identifiable protocol, we can identify it using the ID*/
    func index(of card: Card) -> Int{
        for index in 0..<self.cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return 0 // TODO: fix default return value
    }
    
    /* All functions that mutates a self, needs to be labeled as mutating */
    mutating func chooseCard(playerCard card: Card){
        print("hello from choose card: \(card)")
        let cardIndex = self.index(of: card)
        
        self.cards[cardIndex].isFaceUp = !self.cards[cardIndex].isFaceUp
    }
}
