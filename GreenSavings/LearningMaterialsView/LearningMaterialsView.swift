//
//  LearningMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import SwiftUI

struct LearningMaterialsView: View {
    
    var item: CategoryCardModel
    
    @State var showModal0=false
    @State var showModal1=false
    @State var showModal2=false
    @State var showModal3=false
    
    @State var changeColor=0
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                //learning Materials card
                if item.learningMaterials[0].unlock<=changeColor {
                    LearningMaterialsUnlocked(learningMaterials: item.learningMaterials[0])
                            .onTapGesture {
                                showModal0.toggle()
                            }
                            .sheet(isPresented: $showModal0, content: {
                                ModalMaterialsView(learningMaterials: item.learningMaterials[0], changeColor: $changeColor)
                            })

                    }
                    else{
                        LearningMaterialsLocked(learningMaterials: item.learningMaterials[0])
                    }
                if item.learningMaterials[1].unlock<=changeColor {
                    LearningMaterialsUnlocked(learningMaterials: item.learningMaterials[1])
                        .onTapGesture {
                            showModal1.toggle()
                        }
                        .sheet(isPresented: $showModal1, content: {
                            ModalMaterialsView(learningMaterials: item.learningMaterials[1], changeColor: $changeColor)
                        })
                }
                else{
                    LearningMaterialsLocked(learningMaterials: item.learningMaterials[1])
                }
                if item.learningMaterials[2].unlock<=changeColor {
                    LearningMaterialsUnlocked(learningMaterials: item.learningMaterials[2])
                            .onTapGesture {
                                showModal2.toggle()
                            }
                            .sheet(isPresented: $showModal2, content: {
                                ModalMaterialsView(learningMaterials: item.learningMaterials[2], changeColor: $changeColor)
                            })

                    }
                    else{
                        LearningMaterialsLocked(learningMaterials: item.learningMaterials[2])
                    }
                if item.learningMaterials[3].unlock<=changeColor {
                    LearningMaterialsUnlocked(learningMaterials: item.learningMaterials[3])
                            .onTapGesture {
                                showModal3.toggle()
                            }
                            .sheet(isPresented: $showModal3, content: {
                                ModalMaterialsView(learningMaterials: item.learningMaterials[3], changeColor: $changeColor)
                            })

                    }
                    else{
                        LearningMaterialsLocked(learningMaterials: item.learningMaterials[3])
                    }
                
            }
            .navigationTitle(item.name)
            .padding()
        }
    }
}
