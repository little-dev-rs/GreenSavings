//
//  CategoryRow.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct RowView: View {
    
    var model: RowViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(model.name)
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(model.items) { item in
                        
                        NavigationLink(destination: LearningMaterialsView(item: item),
                                       label: {
                            ItemView(model: item)
                                .padding(.trailing, 10)
                        })
                    }
                }
            }
            .frame(height: model.height)
        }
    }
}

#if DEBUG
//struct CategoryRow_Previews : PreviewProvider {
//    static var previews: some View {
////        CategoryRow(categoryName: "Name")
//    }
//}
#endif

