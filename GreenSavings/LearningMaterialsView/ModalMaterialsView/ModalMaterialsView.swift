//
//  ModalMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 23/10/23.
//

import SwiftUI

struct ModalMaterialsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var isAlertActive: Bool = false
    
    @State var learningMaterial: LearningMaterials
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .center){
                
                Text(learningMaterial.materialType.title)
                    .font(.title).bold()
                    .padding()
                
                ScrollView {
                    
                    Image(learningMaterial.materialType.assetName)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
                        .frame(height: 220)
                        .aspectRatio(1, contentMode: .fill)
                        
                    Text(learningMaterial.materialType.description)
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                }
                Button {
                   
                    if !learningMaterial.isLearned {
                        isAlertActive = true
                    } else {
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.black)
                        Text("Done")
                            .font(.title3).bold()
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
                }
            }
            if isAlertActive {
                CustomAlertView(isActive: $isAlertActive, model: learningMaterial.giftPlant, action: {
                    learningMaterial.isLearned = true
                    presentationMode.wrappedValue.dismiss()
                })
            }
        }
    }
    
}
