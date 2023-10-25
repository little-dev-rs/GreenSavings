//
//  LearningMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import SwiftUI

struct LearningMaterialsView: View {
    
    var item: CategoryCardModel
    
    @State var showModal=false
    @State var changeColor=0
    
    var body: some View {
        
        NavigationStack{
            ScrollView(.vertical){
                //learning Materials card
                ForEach(item.learningMaterials) { learningMaterials in
                    
                    ZStack(alignment: .leading){
                        if learningMaterials.unlock<=changeColor{
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 350, height: 80)
                                .background(learningMaterials.foregroundColor)
                                .cornerRadius(20)
                            Text(learningMaterials.learningMaterialsTitle)
                              .font(
                                Font.custom("SF Pro Display", size: 34)
                                  .weight(.medium)
                              )
                              .kerning(0.374)
                              .foregroundColor(.black)
                              .padding()
                        }
                            else{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 350, height: 80)
                                    .background(Color(red: 0.36, green: 0.35, blue: 0.35).opacity(0.88))
                                    .cornerRadius(20)
                                Text(learningMaterials.learningMaterialsTitle)
                                  .font(
                                    Font.custom("SF Pro Display", size: 34)
                                      .weight(.medium)
                                  )
                                  .kerning(0.374)
                                  .foregroundColor(.black)
                                  .padding()
                            }
                    }
                    .onTapGesture {
                        self.showModal=true
                    }
                    .sheet(isPresented: $showModal, content: {
                        ModalMaterialsView(isShowed: $showModal, learningMaterials: learningMaterials, changeColor: $changeColor)
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

