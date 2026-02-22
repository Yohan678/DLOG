//
//  HomeView.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/22/26.
//

import SwiftUI

struct HomeView: View {
    @Binding var homeSearchInput: String
    var body: some View {
        NavigationStack {
            VStack {
                HomeSearchView(homeSearchInput: $homeSearchInput)
                
                HomeScrollView()
            }
            .navigationTitle("D-Log")
        }
    }
}

#Preview {
    @Previewable @State var homeSearchInput = ""
    HomeView(homeSearchInput: $homeSearchInput)
}
