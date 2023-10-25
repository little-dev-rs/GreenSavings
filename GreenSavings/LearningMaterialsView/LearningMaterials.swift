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
    
    var unlock: Int
    var foregroundColor: Color = .pink
    //init color in MainViewModel
    
    //the associated modals to materials
    var imageName=" "
    var textModal=" "
    //init the image and text in MainViewModel
}


//"Information", "What to buy", "Article", "Video", "Article", "Curiosity", "What to buy"

//backgroundColor is to set in ContentViewModel for each learningMaterialsTitle, and remove the init there
