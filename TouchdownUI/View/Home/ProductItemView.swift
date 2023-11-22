//
//  ProductItemView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - property
    
    let product: Product
    
    //MARK: - body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            
            // prive
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })
    }
}


//MARK: - preview
#Preview {
    ProductItemView(product: products[0])
}
