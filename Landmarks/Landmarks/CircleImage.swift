//
//  CircleImage.swift
//  Landmarks
//
//  Created by Joy Paul on 1/18/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {//'some' is an opaque type that hides the con
        Image("uluru")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth:4)) //add circle border and shadow
            .shadow(radius:10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

