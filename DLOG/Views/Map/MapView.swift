//
//  MapView.swift
//  DLOG
//
//  Created by Yohan Yoon on 3/2/26.
//

import SwiftUI
import MapKit

struct MapView: View {
    let favSpots: [FavoriteSpot]
    
    var body: some View {
        Map {
            
            MapPolyline(coordinates: favSpots.map(\.coordinate))
                .stroke(.blue, lineWidth: 2)
            
            ForEach(favSpots) { spot in
                Marker(spot.title, coordinate: spot.coordinate)
            }
        }
    }
}

#Preview {
    let favSpot = FavoriteSpot.sampleData
    MapView(favSpots: favSpot)
}
