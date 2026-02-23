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
                HStack {
                    Text("D-Log")
                        .font(.system(size: 34, weight: .bold))
                        .padding(.leading, 15)
                    Spacer()
                }
                          
                HomeSearchView(homeSearchInput: $homeSearchInput)
                    .background(.white)
                
                HomeScrollView()
                    .ignoresSafeArea()
            }
            .background(Color.appBackground)
        }
    }
}

#Preview {
    @Previewable @State var homeSearchInput = ""
    HomeView(homeSearchInput: $homeSearchInput)
}
