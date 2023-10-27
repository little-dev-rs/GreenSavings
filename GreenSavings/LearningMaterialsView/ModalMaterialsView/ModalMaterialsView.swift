//
//  ModalMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 23/10/23.
//

import SwiftUI

struct ModalMaterialsView: View {
    
    @Binding var isShowed: Bool
    @State var isAlertActive: Bool = false
    
    var learningMaterials: LearningMaterials
    
    var body: some View {
        ZStack {
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
                
                Button {
                    isAlertActive = true
                } label: {
                    Text("Done")
                }
            }
            if isAlertActive {
                CustomAlertView(isActive: $isAlertActive, model: learningMaterials.giftPlant, action: {
                    isShowed = false
                })
            }
        }
    }
}

//struct ModalMaterialsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalMaterialsView(isShowed: <#Binding<Bool>#>, learningMaterials: <#LearningMaterials#>)
//    }
//}
