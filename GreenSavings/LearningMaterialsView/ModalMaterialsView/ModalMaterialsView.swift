//
//  ModalMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 23/10/23.
//

import SwiftUI

struct ModalMaterialsView: View {
    
    @Binding var isShowed: Bool
    
    var learningMaterials: LearningMaterials
    
    var body: some View {
        VStack(alignment: .center){
            Image(learningMaterials.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 240)
            Text(learningMaterials.textMaterials)
                .font(
                Font.custom("SF Pro Display", size: 18)
                .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .padding()
            Button(action: {
                self.isShowed=false
            }, label: {
                Text("Done")
            }).padding()
        }
    }
}

/*
 #Preview {
 ModalMaterialsView()
 }
 */
