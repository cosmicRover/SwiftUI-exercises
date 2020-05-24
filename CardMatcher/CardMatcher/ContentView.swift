//
//  ContentView.swift
//  CardMatcher
//
//  Created by Joy Paul on 5/23/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /* Horizontal stack => Column(), content => children:Widget*/
        return HStack(content: {
        
            ForEach(0..<4, content: {_ in
                /* passing params*/
                CardView(isFaceUp: true)
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
    var isFaceUp:Bool
    var body: some View{
        //conditional view return
        return ZStack(content: {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 20.0).stroke() //we want the line only
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 20.0).fill(Color.orange)
            }
        })
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
