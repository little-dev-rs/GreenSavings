//
//  LearningMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import SwiftUI

struct LearningMaterialsView: View {
    
    @State var showModal = false
    
    var item: CategoryCardModel
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    ForEach(item.learningMaterials) { material in
                        LearningMaterialCard(model: material)
                            .onTapGesture {
                                self.showModal = true
                            }
                            .sheet(isPresented: $showModal, content: {
                                ModalMaterialsView(isShowed: $showModal, learningMaterial: material)
                            })
                    }
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

