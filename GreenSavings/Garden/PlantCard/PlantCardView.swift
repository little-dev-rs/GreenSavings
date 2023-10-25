//
//  PlantCardView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 24/10/23.
//

import SwiftUI

struct PlantCardView: View {
    
    let model: PlantCardModel

    var body: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 400)
                .padding()
                .foregroundColor(.clear)
                .background(
                    Image(model.imageName)
                        .resizable()
                        .scaledToFill()
                       
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(alignment: .center, spacing: 10) {
                Text(model.name)
                    .font(.title).bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Text(model.description)
                    .font(.title3).bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .padding(20)
        }
    }

}

struct PlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView()
//        PlantCardView(model: .init(name: "Oak", description: "the very old tree", imageName: ""))
    }
}
