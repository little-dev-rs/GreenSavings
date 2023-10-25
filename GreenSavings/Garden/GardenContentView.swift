//
//  GardenContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 20/10/23.
//

import SwiftUI

struct GardenContentView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let plants:  [PlantCardModel] = [.init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                           imageName: "Garden/oak"),
                                      .init(name: "Rose", description: "Wonderful rose", imageName: "Garden/oak")]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(plants) { plant in
                        PlantCardView(model: plant)
                            .padding()
                    }
                }

            }
        }
        .navigationTitle("My Garden") // TODO: move to viewModel
    }
}

struct GardenContentView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView()
    }
}
