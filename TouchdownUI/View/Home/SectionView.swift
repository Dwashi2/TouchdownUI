//
//  SectionView.swift
//  TouchdownUI
//
//  Created by Daniel Washington Ignacio on 21/11/23.
//

import SwiftUI

struct SectionView: View {
    //MARK: - property
    
    @State var rotateClockwise: Bool
    
    //MARK: - body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - preview
#Preview {
    SectionView(rotateClockwise: false)
}
