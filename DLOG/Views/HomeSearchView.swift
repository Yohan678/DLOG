//
//  HomeSearchView.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/22/26.
//

import SwiftUI

struct HomeSearchView: View {
    @Binding var homeSearchInput: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.appOrange)
                .font(.title3)
            
            TextField("Where do you want to go today?", text: $homeSearchInput)
        }
        .padding()
        .background(.white)
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(.gray.opacity(0.1), lineWidth: 1)
        )
        .shadow(radius: 5)
        .padding(.leading, 10)
        .padding(.trailing, 10)
        .padding(.bottom, 10)
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 150)) {
    @Previewable @State var homeSearchInput = ""
    HomeSearchView(homeSearchInput: $homeSearchInput)
}
