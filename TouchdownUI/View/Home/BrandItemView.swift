//
//  BrandItemView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - property
    
    let brand: Brand
    
    
    //MARK: - body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}


//MARK: - Body
#Preview {
    BrandItemView(brand: brands[0])
}
