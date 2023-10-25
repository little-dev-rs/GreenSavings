//
//  GardenContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 20/10/23.
//

import SwiftUI

struct GardenContentView: View {
    
    @Environment(\.presentationMode) var presentationMode

    var model: GardenModel
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(model.plants) { plant in
                        PlantCardView(model: plant)
                            .padding()
                    }
                }

            }
        }
        .navigationTitle(model.name)
    }
}

struct GardenContentView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView(model: MainViewModel().gardenModel)
    }
}
