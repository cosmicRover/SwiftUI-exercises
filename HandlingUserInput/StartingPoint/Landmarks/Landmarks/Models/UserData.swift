//
//  UserData.swift
//  Landmarks
//
//  Created by Joy Paul on 3/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

/* creating an UserData class with observable objects denoted with @Published */
final class UserData: ObservableObject{
    @Published var showFavOnly = false
    @Published var landmarks = landmarkData
}


