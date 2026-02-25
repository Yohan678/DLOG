//
//  SpotCategory.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/25/26.
//

import Foundation

enum SpotCategory: String, CaseIterable {
    case restaurant = "Restaurant"
    case cafe = "Cafe"
    case bar = "Bar"
    case activities = "Activities"
    case shopping = "Shopping"
    case etc = "ETC"
    
    var iconName: String {
        switch self {
        case .restaurant: return "fork.knife"
        case .cafe: return "cup.and.saucer.fill"
        case .bar: return "wineglass.fill"
        case .activities: return "figure.run"
        case .shopping: return "bag.fill"
        case .etc: return "questionmark.square.fill"
        }
    }
}
