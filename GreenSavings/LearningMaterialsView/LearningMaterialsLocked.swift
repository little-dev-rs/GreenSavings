//
//  LearningMaterialsLocked.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 28/10/23.
//

import SwiftUI

struct LearningMaterialsLocked: View {
    var learningMaterials: LearningMaterials
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 350, height: 80)
                .background(Color(red: 0.36, green: 0.35, blue: 0.35).opacity(0.88))
                .cornerRadius(20)
            Text(learningMaterials.learningMaterialsTitle)
                .font(
                    Font.custom("SF Pro Display", size: 34)
                        .weight(.medium)
                )
                .kerning(0.374)
                .foregroundColor(.black)
                .padding()
        }
    }
}
