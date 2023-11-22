//
//  BrandGridView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - property
    
    
    //MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        })
    }
}

//MARK: - preview
#Preview {
    BrandGridView()
}
