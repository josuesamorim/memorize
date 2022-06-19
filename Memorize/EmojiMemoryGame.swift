//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Josué Amorim on 18/06/22.
//

import SwiftUI

class EmojiMemoryGame{
    
   static let emojis = ["😀", "😃", "😄", "🥹","😅","😂", "🤣", "🥲", "☺️"
                  , "😍", "🥰", "😘", "🤪", "😎", "😝"]
    
    static let transport = ["🚗", "🚕", "🚎", "🚌", "🚚", "✈️", "🚘",
    "🚝", "🚆", "🚁", "⛵️", "🚢", "🚀"]


     static let food = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🥝", "🥥", "🥦", "🌶", "🥑", "🍆", "🧄"]
    
    static func createMemoryGame () -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in  EmojiMemoryGame.emojis[pairIndex]}
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
}
