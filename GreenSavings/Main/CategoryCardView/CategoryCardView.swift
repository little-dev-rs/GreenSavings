//
//  CategoryView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct CategoryCardView: View {
    
    var model: CategoryCardModel
    
    @State private var value: Double = 80
    
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
                
                ProgressView(value: value, total: 100)
                    .progressViewStyle(RoundedRectProgressViewStyle())
                
            }
            .padding()
        }
        
    }
    
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryCardView(model: MainViewModel().categories.items.first ?? .init(id: 1, name: "", imageName: "", learningMaterials: []))
//    }
//}
