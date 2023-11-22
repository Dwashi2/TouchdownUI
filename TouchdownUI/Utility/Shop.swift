//
//  Shop.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 22/11/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
