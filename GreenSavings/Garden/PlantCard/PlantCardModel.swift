//
//  PlantCardModel.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 24/10/23.
//

import Foundation

struct PlantCardModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let description: String
    let imageName: String
}
