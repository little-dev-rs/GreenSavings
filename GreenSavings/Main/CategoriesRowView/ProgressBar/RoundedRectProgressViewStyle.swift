//
//  ProgressView.swift
//  GreenSavings
//
//  Created by Svetlana Shardakova on 25/10/23.
//

import SwiftUI

struct RoundedRectProgressViewStyle: ProgressViewStyle {

    func makeBody(configuration: Configuration) -> some View {
        
        let height: CGFloat = 10

        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height)
                .frame(height: height)
                .foregroundColor(.gray.opacity(0.4))
            
            RoundedRectangle(cornerRadius: height)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 200, height: height)
                .foregroundColor(.green)
        }
//        .padding()
    }
}
