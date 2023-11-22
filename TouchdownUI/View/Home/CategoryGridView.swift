//
//  CategoryGridView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - property
    
    
    //MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true))
                {
                    ForEach(categories) { category in
                    CategoryItemView(categoy: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })
    }
}
//MARK: - preview
#Preview {
    CategoryGridView()
}
