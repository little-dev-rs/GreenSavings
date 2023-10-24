//
//  LearningMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import SwiftUI

struct LearningMaterialsView: View {
    
    var viewModel = LearningMaterialsModel()
    
    var item: CategoryCardModel
    
    var body: some View {
        
        NavigationStack{
            ScrollView(.vertical){
                //learning Materials card
                ForEach(viewModel.learningMaterialsTitles) { learningMaterialsTitle in
                    
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 80)
                            .foregroundColor(.pink)
                        Text(learningMaterialsTitle.learningMaterialsTitle)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .padding()
                    }
                }
            }
            .navigationTitle(item.name)
            .padding()
        }
        
    }
}

/*
 #Preview {
LearningMaterialsView()
}
*/
