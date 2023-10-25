//
//  ContentViewModel.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

class MainViewModel {
    
    let navigationTitleText: String = "Green savings"
    
    let greetingText: String = "Hey! \nNice to meet you, eco hero! \nHere you can learn how to save you money and planet. Earn green coins and spend them to plant you own tree!"
    
    let items: [CategoryCardModel] = [.init(id: 1, name: "Electricity", imageName: "Main/electricity"),
                                      .init(id: 2, name: "Water", imageName: "Main/water"),
                                      .init(id: 3, name: "Pollution", imageName: "Main/energy")]
}
