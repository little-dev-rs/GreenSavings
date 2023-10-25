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
    
    @State var showModal=false
    
    var body: some View {
        
        NavigationStack{
            ScrollView(.vertical){
                //learning Materials card
                ForEach(viewModel.learningMaterialsTitles) { learningMaterialsTitle in
                    
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 80)
                            .foregroundColor(learningMaterialsTitle.foregroundColor)
                        Text(learningMaterialsTitle.learningMaterialsTitle)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .padding()
                    }
                    .onTapGesture {
                        self.showModal=true
                    }
                    .sheet(isPresented: $showModal, content: {
                        ModalMaterialsView(isShowed: $showModal, learningMaterialsTitle: learningMaterialsTitle)
                    })
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

