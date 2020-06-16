//
//  EmojiMemoryGameViewModel.swift
//  CardMatcher
//
//  Created by Joy Paul on 5/23/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import Foundation

/* In order for the changes to be reactive, the view model must conform to ObservableObject. Only works for classes.
 It leads to inhereting objectsWillChange.send() aka the change notifier
 */
class EmojiMemoryGameViewModel: ObservableObject {
    /* init the model with type instance for the cards using the built-in init for cards.
     Each time a "@Published" property gets changed, it calles the ObservableObject property
     objectsWillChange.send()
     */
    @Published private var memoryGameModel: MemoryGameModel<String> = EmojiMemoryGameViewModel._initMemoryGameModel()

    static func _initMemoryGameModel() -> MemoryGameModel<String> {
        let emojis = ["👻", "🎃", "🔥"]
        return MemoryGameModel(pairsOfCards: emojis.count, cardContentFactory: { pairIndex in
            emojis[pairIndex]
        })
    }

    // MARK: - Getters

    var cards: [MemoryGameModel<String>.Card] { /* getter for model*/
        return memoryGameModel.cards
    }

    // MARK: - Setters

    func chooseCard(card: MemoryGameModel<String>.Card) {
        memoryGameModel.chooseCard(playerCard: card)
    }
}
