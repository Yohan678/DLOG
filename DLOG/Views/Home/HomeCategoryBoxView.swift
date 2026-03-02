//
//  HomeCategoryBoxView.swift
//  DLOG
//
//  Created by Yohan Yoon on 2/23/26.
//

import SwiftUI

struct HomeCategoryBoxView: View {
    let categoryTitle: String
    let iconName: String
    
    var body: some View {
        
        VStack(spacing: 15) {
            Image(systemName: iconName)
                .font(.title)
                .foregroundColor(.appOrange)
            
            Text(categoryTitle)
        }
        .frame(minWidth: 100)
        .foregroundColor(.black)
        .padding(.leading, 15)
        .padding(.trailing, 15)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 100)
                .foregroundColor(.appBackground)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(
                            Color.appOrange
                        )
                )
        )
        .shadow(color: .black.opacity(0.1), radius: 2, x: 2, y: 2)
        .padding()
    }
}

#Preview {
    let categoryTitle = "Sample"
    let iconName = "pencil"
    HomeCategoryBoxView(categoryTitle: categoryTitle, iconName: iconName)
}
