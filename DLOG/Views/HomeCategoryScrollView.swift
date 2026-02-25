//
//  HomeCategoryScrollView.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/23/26.
//

import SwiftUI

struct HomeCategoryScrollView: View {
    let favSpot: [FavoriteSpot]
    
    var body: some View {
        VStack {
            HStack {
                Text("Category")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.leading, 15)
                
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(SpotCategory.allCases, id: \.self) { spot in
                        HomeCategoryBoxView(categoryTitle: spot.rawValue, iconName: spot.iconName)
                    }
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
            }
        }
    }
}

#Preview {
    let favSpot = FavoriteSpot.sampleData
    HomeCategoryScrollView(favSpot: favSpot)
}
