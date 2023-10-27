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
    @State var progress: Int
    var learningMaterials: [LearningMaterials] {
        didSet {
            progress = (learningMaterials.map { $0.isLearned }.count) / learningMaterials.count * 100
        }
    }
    //to keep the connection between views
}



