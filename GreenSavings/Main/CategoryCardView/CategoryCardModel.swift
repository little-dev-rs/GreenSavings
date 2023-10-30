//
//  ItemViewModel.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct CategoryCardModel: Identifiable, Hashable, Equatable {
    let id: Int
    let name: String
    let imageName: String
    var progress: Int
    var learningMaterials: [LearningMaterials] {
        didSet {
            progress = (learningMaterials.map { $0.isLearned }.count) / learningMaterials.count * 100
        }
    }

    static func == (lhs: CategoryCardModel, rhs: CategoryCardModel) -> Bool {
        return lhs.id == rhs.id
    }
}
