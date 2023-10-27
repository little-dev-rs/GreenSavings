//
//  LearningMaterialCard.swift
//  GreenSavings
//
//  Created by Svetlana Shardakova on 27/10/23.
//

import SwiftUI

struct LearningMaterialCard: View {

    let model: LearningMaterials
    
    var body: some View {
        
        ZStack(alignment: .leading) {
    
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 80)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 4)
                .foregroundColor(.white)

            HStack() {
                
                Text(model.learningMaterialsTitle)
                    .font(.title2).bold()
                    .padding(.horizontal)
                
                Spacer()
                
                Image(model.isLearned ? model.giftPlant.imageName : "Garden/blurred3")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding()
                
            }

            if !model.isUnlocked {
                LinearGradient(colors: [.gray.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .padding(.horizontal)
    }
    
}

struct LearningMaterialCard_Previews: PreviewProvider {
    static var previews: some View {
        LearningMaterialCard(model: .init(learningMaterialsTitle: "Material", isUnlocked: true, isLearned: false, giftPlant: .init(name: "oak", description: "old oak", imageName: "Garden/oak")))
    }
}
