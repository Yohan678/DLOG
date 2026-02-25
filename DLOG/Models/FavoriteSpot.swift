//
//  FavoriteSpot.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/24/26.
//

import Foundation

struct FavoriteSpot: Identifiable {
    let id: UUID
    let title: String
    let category: SpotCategory
    
    init(id: UUID = UUID(), title: String, category: SpotCategory) {
        self.id = id
        self.title = title
        self.category = category
    }
}
