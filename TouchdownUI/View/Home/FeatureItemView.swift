//
//  FeatureItemView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct FeatureItemView: View {
    //MARK: - property
    
    let player: Player
    
    //MARK: - body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - preview
#Preview {
    FeatureItemView(player: players[0])
}
