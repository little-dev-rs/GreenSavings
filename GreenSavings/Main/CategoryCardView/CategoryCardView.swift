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
            Text(model.name)
                .font(.largeTitle).bold()
                .foregroundColor(.white)
                .padding()
        }
    }
}

/*
 #if DEBUG
struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(model: MainViewModel().categories.items.first ?? .init(id: 1, name: "", imageName: ""))
    }
}
#endif
*/
