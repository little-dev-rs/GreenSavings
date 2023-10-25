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
                .frame(width: 260, height: 374)
            LinearGradient(colors: [.clear, .black.opacity(0.8)], startPoint: .top, endPoint: .bottom)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Text(model.name)
                .font(.title2).bold()
                .foregroundColor(.white)
                .padding()
        }
    }
}

#if DEBUG
struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(model: .init(id: 1, name: "Name", imageName: "electricity"))
    }
}
#endif
