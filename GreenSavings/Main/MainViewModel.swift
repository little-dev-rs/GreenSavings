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
    
    let categories: CategoriesRowModel = .init(name: "Categories",
                                               items: [
                                                .init(id: 1, name: "Electricity", imageName: "Main/electricity"),
                                                .init(id: 2, name: "Water", imageName: "Main/water"),
                                                .init(id: 3, name: "Pollution", imageName: "Main/energy")
                                               ])

}
