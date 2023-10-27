//
//  ContentViewModel.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

class MainViewModel {
    
    let navigationTitleText: String = "Green savings"
    
    let gardenModel: GardenModel = .init(name: "My Garden",
                                         imageName: "Main/garden",
                                         plants:  [
                                            .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak"),
                                            .init(name: "Rose", description: "Wonderful rose", imageName: "Garden/oak")
                                         ])
    
    let plants: [PlantCardModel] =  [
        .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak"),
        .init(name: "Rose", description: "Wonderful rose", imageName: "Garden/oak")
     ]
    
    var categories: CategoriesRowModel = .init(name: "Categories",
                                               items: [.init(id: 1, name: "Electricity",
                                                             imageName: "Main/electricity",
                                                             progress: 0,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "How to reduce CO2?",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Recycling tips",
                                                                      isUnlocked: true,
                                                                      isLearned: false,
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Eco shoppers",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "3R: Reuse, Reduce, Recycle",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak"))
                                                             ]),
                                                       .init(id: 2,
                                                             name: "Water",
                                                             imageName: "Main/water",
                                                             progress: 0,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "One", isUnlocked: true, isLearned: true, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Two", isUnlocked: true, isLearned: true, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Three", isUnlocked: true, isLearned: false, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Four", isUnlocked: false, isLearned: false, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak"))
                                                             ]),
                                                       .init(id: 3,
                                                             name: "Pollution",
                                                             imageName: "Main/energy",
                                                             progress: 0,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "One", isUnlocked: true, isLearned: true, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Two", isUnlocked: true, isLearned: true, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Three", isUnlocked: true, isLearned: false, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Four", isUnlocked: false, isLearned: false, giftPlant: .init(name: "Oak", description: "In ancient Greece the oak was the tree consecrated to Zeus.", imageName: "Garden/oak"))
                                                             ])])

//    CategoryCardModel =
//        .init(id: 1,
//name: "Electricity",
//imageName: "Main/electricity", learningMaterials: [LearningMaterials(learningMaterialsTitle: "Information", unlock: 0, foregroundColor: Color(red: 1, green: 0.65, blue: 0.7),
//imageName: "Articles1Electricity",
//textModal: "Reducing energy waste is good for the environment and good for profits. There are many ways to reduce energy waste in the home. How does reducing energy waste help the environment? Electricity is generated by burning fossil fuels, it produces greenhouse gases that harm the planet. By minimizing energy waste, power plants burning fossil fuels emit fewer pollutants, reducing the greenhouse effect, which leads to higher temperatures and extreme weather conditions. Additionally, conserving energy resources like trees, coal, and natural gas is vital. Wasted energy also damages biodiversity by destroying natural habitats. Adopting practices to reduce electricity waste can significantly lower carbon emissions and contribute to the fight against pollution and climate change."),

}
