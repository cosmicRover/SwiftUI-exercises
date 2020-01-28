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
        /*MARK:  TODO: need to get id for ListView working so that dynamic list building works*/
        List(landmarkData, id: \.id){
            
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
