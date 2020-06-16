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
            ForEach(viewModel.cards, content: { card in
                /* passing params from viewModel cards*/
                CardView(card: card).onTapGesture { /* add tap gesture*/
                    self.viewModel.chooseCard(card: card)
                }
            })
        })
            .foregroundColor(Color.orange)
            .padding()
        //            .font(Font.largeTitle)
    }
}

/* Refactored view Stack view widget/component */
struct CardView: View {
    // MARK: - View Constant values

    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    let fontScalFactor: CGFloat = 0.75

    /* struct init params*/
    var card: MemoryGameModel<String>.Card
    var body: some View {
        /* GeometryReader enables size manipulations*/
        GeometryReader(content: { geometry in
            ZStack(content: {
                if self.card.isFaceUp {
                    RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: self.edgeLineWidth) // we want the line only
                    Text(self.card.content)
                } else {
                    RoundedRectangle(cornerRadius: self.cornerRadius).fill(Color.orange)
                }

                /* change the font size to minimum available from geometryReader*/
            }).font(Font.system(size: min(geometry.size.width, geometry.size.height) * self.fontScalFactor))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGameView(viewModel: EmojiMemoryGameViewModel())
    }
}
