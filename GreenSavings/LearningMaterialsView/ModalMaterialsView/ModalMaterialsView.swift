//
//  ModalMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 23/10/23.
//

import SwiftUI

struct ModalMaterialsView: View {
    
    @Binding var isShowed: Bool
    
    var learningMaterialsTitle: LearningMaterials
    
    var body: some View {
        
        
        Image(learningMaterialsTitle.imageName)
        
        Button(action: {
            self.isShowed=false
        }, label: {
            Text("Done")
        })
    }
}

/*
 #Preview {
 ModalMaterialsView()
 }
 */
