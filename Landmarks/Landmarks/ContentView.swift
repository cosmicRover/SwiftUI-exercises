//
//  ContentView.swift
//  Landmarks
//
//  Created by Joy Paul on 1/18/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import SwiftUI

//MARK: TODO: continue from section 5 https://developer.apple.com/tutorials/swiftui/creating-and-combining-views

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .none){
            CircleImage()//custom image view
            
            Text("Uluru")
            .fontWeight(.medium)
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .multilineTextAlignment(.center)
            
            HStack{
                Text("Petermann NT")
                .font(.callout)
                .fontWeight(.light)
                .italic()
                .foregroundColor(.blue)
                .multilineTextAlignment(.leading)
                
                Spacer() //maximum space possible
                
                Text("Australia")
                    .font(.caption)
                    .fontWeight(.heavy)
                    .foregroundColor(.orange)
                    .underline()
            }
        }.padding(10) //insert some padding
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
