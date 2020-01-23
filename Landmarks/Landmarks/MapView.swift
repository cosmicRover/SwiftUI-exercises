//
//  MapView.swift
//  Landmarks
//
//  Created by Joy Paul on 1/23/20.
//  Copyright © 2020 Joy Paul. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: View, UIViewRepresentable {//A wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.
    
    //body is replaced with makeUIView since we want to produce a mapView
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType{
        MKMapView(frame: .zero)
    }
    
    //plot down the regions and center cameras on the map on update
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinates = CLLocationCoordinate2D(latitude: -25.344490, longitude: 131.035431)
        let span = MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
