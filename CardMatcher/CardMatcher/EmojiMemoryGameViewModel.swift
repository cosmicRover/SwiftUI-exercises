//
//  EmojiMemoryGameViewModel.swift
//  CardMatcher
//
//  Created by Joy Paul on 5/23/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import Foundation

class EmojiMemoryGameViewModel{
    /* init the model with type instance for the cards using the built-in init for cards.*/
    private var memoryGameModel: MemoryGameModel<String> = EmojiMemoryGameViewModel._initMemoryGameModel()
    
    
    static func _initMemoryGameModel() -> MemoryGameModel<String>{
        let emojis = ["👻", "🎃", "🔥"]
        return MemoryGameModel(pairsOfCards: emojis.count, cardContentFactory: {pairIndex in
            return emojis[pairIndex]
        })
    }
    
    // MARK: - Getters
    var cards: Array<MemoryGameModel<String>.Card>{/* getter for model*/
        return memoryGameModel.cards
    }
    
    // MARK: - Setters
    func chooseCard(card: MemoryGameModel<String>.Card){
        memoryGameModel.chooseCard(playerCard: card)
    }
}
