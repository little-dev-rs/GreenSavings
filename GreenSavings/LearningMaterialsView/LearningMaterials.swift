//
//  LearningMaterials.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import Foundation
import SwiftUI

struct LearningMaterials: Identifiable{
    var id=UUID()
    
    var learningMaterialsTitle: String
    var backgroundColor: Color=Color(red: 1, green: 0.65, blue: 0.7)
    var unlock: Bool = false
    //the associated modals to materials
    var imageName: String=" "
    var textMaterials: String=" "
    
}


//"Information", "What to buy", "Article", "Video", "Article", "Curiosity", "What to buy"

//backgroundColor is to set in ContentViewModel for each learningMaterialsTitle, and remove the init there
