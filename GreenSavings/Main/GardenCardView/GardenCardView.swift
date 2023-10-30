//
//  GardenView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct GardenCardView: View {
    
    let gardenModel: GardenModel
    let height: CGFloat

    var body: some View {
        ZStack(alignment: .bottomLeading) {
        
            RoundedRectangle(cornerRadius: 20)
                .frame(height: height)
                .foregroundColor(.clear)
                .background(
                    Image(gardenModel.imageName)
                        .resizable()
                        .scaledToFill()
                       
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text(gardenModel.name)
                .font(.largeTitle).bold()
                .foregroundColor(.white)
                .padding()
        }
    }

}

//struct GardenView_Previews: PreviewProvider {
//    static var previews: some View {
//        GardenCardView(gardenModel: .init(name: "My Garden", imageName: "Main/garden", plants: []), height: 170)
//    }
//}
