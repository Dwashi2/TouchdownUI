//
//  TitleView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct TitleView: View {
    //MARK: - property
    
    var title: String
    
    //MARK: - body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}


//MARK: - preview
#Preview {
    TitleView(title: "Helmet")
}
