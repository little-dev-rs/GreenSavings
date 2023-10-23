//
//  LearningMaterials.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import Foundation
import SwiftUI

struct LearningMaterials: Identifiable{
    var id = UUID()
    var learningMaterialsTitle: String
    
    //li devo mettere scuri
    var foregroundColor: Color = .pink
    
    //the associated modals to materials
    var imageName="garden2"
}
