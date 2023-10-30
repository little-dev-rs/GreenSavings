//
//  LearningMaterials.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import Foundation
import SwiftUI

struct LearningMaterials: Identifiable, Hashable {
    var id = UUID()
    var backgroundColor: Color = .cyan
    var learningMaterialsTitle: String
    var isUnlocked: Bool
    var isLearned: Bool
    var imageName: String = " " // use real info
    var textMaterials: String = " " // use real info
    var giftPlant: PlantCardModel
}

extension LearningMaterials: Equatable {
    static func == (lhs: LearningMaterials, rhs: LearningMaterials) -> Bool {
        return lhs.id == rhs.id
    }
}

extension LearningMaterials {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
