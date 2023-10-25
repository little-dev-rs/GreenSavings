//
//  CategoryRow.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct CategoriesRowView: View {
    
    var model: CategoriesRowModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(model.name)
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(model.items) { item in
                        NavigationLink(destination: LearningMaterialsView(item: item),
                                       label: {
                            CategoryCardView(model: item)
                                .padding(.trailing, 10)
                        })
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoriesRowView(model: .init(name: "Categories", items: MainViewModel().items))
    }
}

