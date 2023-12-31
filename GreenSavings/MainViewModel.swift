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
                                         imageName: "Main/garden")

    var categories: CategoriesRowModel = .init(name: "Categories",
                                               items: [.init(id: 1, name: "Electricity",
                                                             imageName: "Main/electricity",
                                                             progress: 0,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "Information",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      textMaterials: "Reducing energy waste is good for the environment and good for profits. There are many ways to reduce energy waste in the home. \nHow does reducing energy waste help the environment?\n Electricity is generated by burning fossil fuels, it produces greenhouse gases that harm the planet. By minimizing energy waste, power plants burning fossil fuels emit fewer pollutants, reducing the greenhouse effect, which leads to higher temperatures and extreme weather conditions. Additionally, conserving energy resources like trees, coal, and natural gas is vital. Wasted energy also damages biodiversity by destroying natural habitats. Adopting practices to reduce electricity waste can significantly lower carbon emissions and contribute to the fight against pollution and climate change.",
                                                                      giftPlant: .init(name: "Rose",
                                                                                       description: "The red rose is often associated with love and passion and is a popular symbol for Valentine's Day.",
                                                                                       imageName: "Garden/rose")),
                                                                .init(learningMaterialsTitle: "Video",
                                                                      isUnlocked: true,
                                                                      isLearned: false, imageName: "ElecrticityVideo1",
                                                                      giftPlant: .init(name: "Pine",
                                                                                       description: "Pine trees produce a sticky substance called resin, which has been used for various purposes, including making turpentine and sealing boats.",
                                                                                       imageName: "Garden/pine")),
                                                                .init(learningMaterialsTitle: "Some tips",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Spruce",
                                                                                       description: "Spruce wood is light, soft, and flexible, making it ideal for use in musical instruments, particularly soundboards for violins, guitars, and pianos.",
                                                                                       imageName: "Garden/spruce")),
                                                                .init(learningMaterialsTitle: "Fun facts",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak_new"))
                                                             ]),
                                                       .init(id: 2,
                                                             name: "Water",
                                                             imageName: "Main/Water_card",
                                                             progress: 20,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "Information",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Jasmine",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/jusmine")),
                                                                .init(learningMaterialsTitle: "Video",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Date Palm",
                                                                                       description: "Date palms are one of the oldest cultivated plants, with a history dating back over 5,000 years.",
                                                                                       imageName: "Garden/date_palm")),
                                                                .init(learningMaterialsTitle: "Some tips",
                                                                      isUnlocked: true,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Tulip",
                                                                                       description: "Tulips are native to Central Asia and were introduced to Europe in the 16th century, where they became highly prized and the subject of a famous speculative bubble known as Tulipmania.",
                                                                                       imageName: "Garden/tulip")),
                                                                .init(learningMaterialsTitle: "Fun facts",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Lemon tree",
                                                                                       description: "Lemon trees are native to Asia and are believed to have been brought to Europe by the Crusaders in the 12th century.",
                                                                                       imageName: "Garden/lemon_tree"))
                                                             ]),
                                                       .init(id: 3,
                                                             name: "Recycling",
                                                             imageName: "Main/Recycling_card",
                                                             progress: 10,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "Information",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Fern",
                                                                                       description: "Ferns are an ancient group of plants that have been around for over 360 million years, pre-dating the dinosaurs.",
                                                                                       imageName: "Garden/fern")),
                                                                .init(learningMaterialsTitle: "Video",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Sunflower",
                                                                                       description: "Sunflowers are native to North America and were first cultivated by Native Americans over 3,000 years ago.",
                                                                                       imageName: "Garden/sunflower")),
                                                                .init(learningMaterialsTitle: "Some tips",
                                                                      isUnlocked: true,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Birch",
                                                                                       description: "The sap of the birch tree can be tapped and used to make birch syrup, which is a sweetener similar to maple syrup.",
                                                                                       imageName: "Garden/birch")),
                                                                .init(learningMaterialsTitle: "Fun facts",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Rosehips",
                                                                                       description: "Rosehips are rich in vitamin C and are used in a variety of culinary and medicinal applications. For example, they can be made into tea, jam, jelly, and syrup.",
                                                                                       imageName: "Garden/rosehips"))
                                                             ]) ,
                                                       .init(id: 4,
                                                             name: "Green mobility",
                                                             imageName: "Main/Greenmobilitycard",
                                                             progress: 30,
                                                             learningMaterials: [
                                                                .init(learningMaterialsTitle: "One",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Video",
                                                                      isUnlocked: true,
                                                                      isLearned: true,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Some tips",
                                                                      isUnlocked: true,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak")),
                                                                .init(learningMaterialsTitle: "Fun facts",
                                                                      isUnlocked: false,
                                                                      isLearned: false,
                                                                      imageName: "Materials/Electricity",
                                                                      giftPlant: .init(name: "Oak",
                                                                                       description: "In ancient Greece the oak was the tree consecrated to Zeus.",
                                                                                       imageName: "Garden/oak"))
                                                             ])
                                               ])
}

