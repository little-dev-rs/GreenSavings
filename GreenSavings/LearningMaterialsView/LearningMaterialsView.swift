//
//  LearningMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import SwiftUI

struct LearningMaterialsView: View {
    
    @State var showModal1 = false
    @State var showModal2 = false
    @State var showModal3 = false
    @State var showModal4 = false
    
    var item: CategoryCardModel
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    let firstCategory = item.learningMaterials[0]
                    LearningMaterialCard(model: firstCategory)
                        .onTapGesture {
                            self.showModal1 = true
                        }
                        .sheet(isPresented: $showModal1, content: {
                            ModalMaterialsView(learningMaterial: firstCategory)
                        })
                    let secondCategory = item.learningMaterials[1]
                    LearningMaterialCard(model: secondCategory)
                        .onTapGesture {
                            self.showModal2 = true
                        }
                        .sheet(isPresented: $showModal2, content: {
                            VideoView(learningMaterial: secondCategory)
                        })
                    let thirdCategory = item.learningMaterials[2]
                    LearningMaterialCard(model: thirdCategory)
                        .onTapGesture {
                            self.showModal3 = true
                        }
                        .sheet(isPresented: $showModal3, content: {
                            ModalMaterialsView(learningMaterial: thirdCategory)
                        })
                    let fourthCategory = item.learningMaterials[3]
                    LearningMaterialCard(model: fourthCategory)
                        .onTapGesture {
                            self.showModal4 = true
                        }
                        .sheet(isPresented: $showModal4, content: {
                            ModalMaterialsView(learningMaterial: fourthCategory)
                        })
                }
            }.padding(.top)
                .navigationTitle(item.name)
        }
        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
        
    }
    
}

struct LearningMaterialsView_Previews : PreviewProvider {

    static var previews: some View {
        LearningMaterialsView(item: MainViewModel().categories.items.first ?? .init(id: 1, name: "name", imageName: "imageName", progress: 20, learningMaterials: []))
    }

}

