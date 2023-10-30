//
//  CategoryRow.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct CategoriesRowView: View {
    
    let model: CategoriesRowModel
    let height: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(model.name)
                .font(.largeTitle).bold()
                .padding(.vertical)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(model.items, id: \.self) { item in
                        NavigationLink(destination: LearningMaterialsView(item: item),
                                       label: {
                            CategoryCardView(model: item)
                                .padding(.trailing, 10)
                        })
                    }
                }
            }
        }
        .frame(height: height)
    }
}

//struct CategoryRow_Previews : PreviewProvider {
 //   static var previews: some View {
//        CategoriesRowView(model: MainViewModel().categories?.first, height: 300)
 //   }
//}

