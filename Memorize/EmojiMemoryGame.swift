//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by JosuΓ© Amorim on 18/06/22.
//

import SwiftUI

class EmojiMemoryGame{
    
   static let emojis = ["π", "π", "π", "π₯Ή","π","π", "π€£", "π₯²", "βΊοΈ"
                  , "π", "π₯°", "π", "π€ͺ", "π", "π"]
    
    static let transport = ["π", "π", "π", "π", "π", "βοΈ", "π",
    "π", "π", "π", "β΅οΈ", "π’", "π"]


     static let food = ["π", "π", "π", "π", "π", "π", "π", "π", "π", "π«", "π₯", "π₯₯", "π₯¦", "πΆ", "π₯", "π", "π§"]
    
    static func createMemoryGame () -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in  EmojiMemoryGame.emojis[pairIndex]}
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
}
