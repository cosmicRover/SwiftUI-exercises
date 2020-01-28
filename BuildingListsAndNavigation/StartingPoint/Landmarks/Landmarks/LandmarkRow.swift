//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Joy Paul on 1/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    /* A reference to landmark data model */
    var landmark: Landmark
    
    var body: some View {
        HStack{
            /* landmark details*/
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text("\(landmark.name)")
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        /* able to group views together*/
        Group{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.fixed(width: 300, height: 70)) /*specifies a preview height and width, only changes xcode displays in the canvas*/
    }
}
