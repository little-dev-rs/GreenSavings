//
//  ContentViewModel.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

class ContentViewModel{
    
    let navigationTitleText: String = "My green savings"
    
    let greetingText: String = "Hey! \nNice to meet you, eco hero! \nHere you can learn how to save you money and planet. Earn green coins and spend them to plant you own tree!"
    
    let items: [ItemViewModel] = [.init(id: 1, name: "Electricity", foregroundColor: .green, imageName: "electricity"),
                                  .init(id: 2, name: "Recycling", foregroundColor: .red, imageName: "recycling"),
                                  .init(id: 3, name: "Pollution", foregroundColor: .yellow, imageName: "pollution")]
    
    
    
}
