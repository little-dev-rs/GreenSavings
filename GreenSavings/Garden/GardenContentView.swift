//
//  GardenContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 20/10/23.
//

import SwiftUI

struct GardenContentView: View {
    
    @Environment(\.presentationMode) var presentationMode

    var plants = MainViewModel().categories.items.flatMap { $0.learningMaterials }.map { $0.giftPlant }
//    var plants = MainViewModel().categories.items.flatMap { $0.learningMaterials }.filter({ $0.isLearned }).map { $0.giftPlant  }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    
                    ScrollView {
                        
                        ForEach(plants) { plant in
                            PlantCardView(model: plant)
                                .padding()
                        }
                        
                    }
                }
            }
        }
        .navigationTitle("My garden")
    }
}

struct GardenContentView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView()
    }
}
