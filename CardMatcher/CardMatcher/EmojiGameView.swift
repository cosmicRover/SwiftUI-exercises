//
//  ContentView.swift
//  CardMatcher
//
//  Created by Joy Paul on 5/23/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import SwiftUI

struct EmojiGameView: View {
    
    /* view model is being initialized in SceneDelegate()
     "@ObservedObject" indicates that this var as an ObservableObject in it's corresponding
     ViewModel, and it must react to the changes. It only gets diff.modified.
     */
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        
        /* Horizontal stack => Column(), content => children:Widget*/
        return HStack(content: {
        
            ForEach(viewModel.cards, content: {card in
                /* passing params from viewModel cards*/
                CardView(card: card).onTapGesture {/* add tap gesture*/
                    self.viewModel.chooseCard(card: card)
                }
            })
        })
            .foregroundColor(Color.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

/*Refactored view Stack view widget/component */
struct CardView: View {
    /* struct init params*/
    var card: MemoryGameModel<String>.Card
    var body: some View{
        //conditional view return
        return ZStack(content: {
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 20.0).stroke() //we want the line only
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 20.0).fill(Color.orange)
            }
        })
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGameView(viewModel: EmojiMemoryGameViewModel())
    }
}
