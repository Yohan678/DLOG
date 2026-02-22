//
//  HomeScrollView.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/22/26.
//

import SwiftUI

struct HomeScrollView: View {
    var body: some View {
        ScrollView{
            ForEach(0..<10, id: \.self) { index in
                Text("\(index)")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeScrollView()
}
