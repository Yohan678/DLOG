//
//  MainView.swift
//  DLOG
//
//  Created by Yohan Yoon on 3/2/26.
//

import SwiftUI

struct MainView: View {
    let favSpot: [FavoriteSpot]
    
    @State private var homeSearchInput: String = ""
    var body: some View {
        TabView {
            HomeView(favSpot: favSpot, homeSearchInput: $homeSearchInput)
                    .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            
            MapView(favSpots: favSpot)
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("map")
                }
        }
    }
}

#Preview {
    @Previewable @State var favSpot = FavoriteSpot.sampleData
    @Previewable @State var homeSearchInput = ""
    MainView(favSpot: favSpot)
}
