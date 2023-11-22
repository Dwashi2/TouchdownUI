//
//  HeaderDetailView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - property
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}


//MARK: - preview
#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
