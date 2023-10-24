//
//  GardenView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct GardenView: View {
    
//    let gardenModel: GardenModel

    var body: some View {
        ZStack(alignment: .bottomLeading) {
        
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width - 20, height: 140)
                .foregroundColor(.clear)
                .background(
                    Image("garden2") //gardenModel.image
                        .resizable()
                        .scaledToFill()
                       
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text("My Garden")
                .font(.title2).bold()
                .foregroundColor(.white)
                .padding()
        }
    }

}

struct GardenView_Previews: PreviewProvider {
    static var previews: some View {
        GardenView()
    }
}
