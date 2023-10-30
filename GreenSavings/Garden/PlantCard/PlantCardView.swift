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
                        .offset(y: -80)
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            LinearGradient(colors: [.clear,
                                    .clear,
                                    .black.opacity(0.5),
                                    .black,
                                    .black], startPoint: .center, endPoint: .bottom)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(model.name)
                        .font(.title).bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                    Spacer()
                }
                HStack {
                    Text(model.description)
                        .font(.subheadline).bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .padding(20)
        }
    }

}

struct PlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView()
    }
}
