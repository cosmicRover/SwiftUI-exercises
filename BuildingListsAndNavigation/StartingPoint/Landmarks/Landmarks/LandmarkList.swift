//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joy Paul on 1/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /*a dynamic list of items*/
        /*pass id param to List() to get hold of unique ids of each row. Since LandmarkData already
         has an id, we can call landmarkdata directly*/
        NavigationView{//embeded in a nav bar, then -> provide a navigation link
            List(landmarkData){landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
        }.navigationBarTitle(Text("Landmarks"))//nav bar takes in a titile (not appearning for some reason)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //to preview on varoius devices use preview device widgets. can also be used as list of devices
        ForEach(["iPhone SE", "iPhone X"], id: \.self){ device in
            LandmarkList().previewDevice(PreviewDevice(rawValue: device))
            .previewDisplayName(device)
        }
    }
}
