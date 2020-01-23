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
        
        //V for vertical (Column in flutter)
        VStack {
            //Z for overlaying views on top of each other (Stack in flutter)
            ZStack{
                MapView().frame(height: 300).edgesIgnoringSafeArea(.top) //ignores the safe area
                CircleImage().offset(y: 150)
            }
            Spacer()
            VStack(alignment: .leading){
                Text("Uluru")
                .fontWeight(.medium)
                .font(.largeTitle)
                .foregroundColor(.yellow)
                .multilineTextAlignment(.center)
                
                //H for horizontal (Row in flutter)
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
            }.padding()
            Spacer() //pushing back the viewsto fill the entire screen
        } //insert some padding
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
