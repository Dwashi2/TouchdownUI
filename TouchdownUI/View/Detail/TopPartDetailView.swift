//
//  TopPartDetailView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - property
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    //MARK: - body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        })
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}


//MARK: - preview
#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
