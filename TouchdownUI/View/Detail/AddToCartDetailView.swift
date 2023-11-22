//
//  AddToCartDetailView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - property
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}


//MARK: - preview
#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
