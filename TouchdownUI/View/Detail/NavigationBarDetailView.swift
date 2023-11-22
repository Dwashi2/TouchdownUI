//
//  NavigationBarDetailView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - property
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}


//MARK: - preview
#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
}
