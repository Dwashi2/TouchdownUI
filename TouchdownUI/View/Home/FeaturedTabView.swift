//
//  FeaturedTabView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - property
    
    
    //MARK: - body
    var body: some View {
        TabView {
            ForEach(players) { player in
             FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}


//MARK: - preview
#Preview {
    FeaturedTabView()
}
