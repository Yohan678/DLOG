//
//  FavoriteSpot.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/24/26.
//

import Foundation
import MapKit

struct FavoriteSpot: Identifiable {
    let id: UUID
    let title: String
    let latitude: Double
    let longitude: Double
    let category: SpotCategory
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init(id: UUID = UUID(), title: String, latitude: Double, longitude: Double, category: SpotCategory) {
        self.id = id
        self.title = title
        self.latitude = latitude
        self.longitude = longitude
        self.category = category
    }
}
