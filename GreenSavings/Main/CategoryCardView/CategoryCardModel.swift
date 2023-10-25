//
//  ItemViewModel.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct CategoryCardModel: Identifiable {
    let id: Int
    let name: String
    let imageName: String
    
    
    var learningMaterials: [LearningMaterials]
    //to keep the connection between views
}



