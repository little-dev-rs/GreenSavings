//
//  CategoryView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct CategoryCardView: View {
    
    var model: CategoryCardModel
    
    var body: some View {

        ZStack(alignment: .bottomLeading) {
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.clear)
                .background(
                    Image(model.imageName)
                        .resizable()
                        .scaledToFill()
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(0.62, contentMode: .fill)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(model.name)
                    .font(.largeTitle).bold()
                    .foregroundColor(.white)
                
                ProgressView(value: model.progress, total: 100)
                    .progressViewStyle(RoundedRectProgressViewStyle())
                
            }
            .padding()
        }
        
    }
    
}

//struct CategoryCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryCardView(model: MainViewModel().categories.items.first ?? .init(id: 1, name: "", imageName: "", progress: 30, learningMaterials: [.init(learningMaterialsTitle: "", isUnlocked: false, isLearned: false, giftPlant: .init(name: "oak", description: "", imageName: ""))]))
//    }
//}
