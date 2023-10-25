//
//  CategoryView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct ItemView: View {
    
    var model: ItemViewModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 20)
                .aspectRatio(1, contentMode: .fit)
            
                .foregroundColor(.clear)
                .background(
                    Image(model.imageName)
                        .resizable()
                        .scaledToFill()
                       
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Text(model.name)
                .font(.title2).bold()
                .foregroundColor(.white)
                .padding()
        }
    }
}

/*
struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(model: .init(id: 1, name: "Name", foregroundColor: .red, imageName: "electricity"))
    }
}
#endif
*/
