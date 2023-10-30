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
    
    var learningMaterial: LearningMaterials
    
    var body: some View {
    
        ZStack {
            VStack(alignment: .center){
                Image(learningMaterial.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 240)
                Text(learningMaterial.textMaterials)
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
//                print2(model: learningMaterial.giftPlant)
                
                CustomAlertView(isActive: $isAlertActive, model: learningMaterial.giftPlant, action: {
                    isShowed = false
                })
            }
        }
    }
    
    func print2(model: PlantCardModel) {
        print("model \(model)")
    }
}

//struct ModalMaterialsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalMaterialsView(isShowed: false., learningMaterials: .init(learningMaterialsTitle: "", isUnlocked: true, isLearned: false, giftPlant: .init(name: "", description: "", imageName: "")))
//    }
//}


//
//  ModalMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 23/10/23.
//
//
//import SwiftUI
//
//
//struct ModalMaterialsView: View {
//
//    @Binding var isShowed: Bool
//
//    var learningMaterials: LearningMaterials
//
//    @Binding var changeColor: Int
//
//    var body: some View {
//        VStack{
//            Rectangle()
//                .foregroundColor(.clear)
//                .frame(width: 347, height: 246)
//                .background(
//                    Image(learningMaterials.imageName)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 347, height: 246)
//                        .clipped()
//                )
//                .cornerRadius(20)
//            ScrollView(.vertical){
//                Text(learningMaterials.textModal)
//                    .lineLimit(nil)
//                    .font(
//                        Font.custom("SF Pro Display", size: 18)
//                            .weight(.medium)
//                    )
//                    .kerning(0.374)
//                    .foregroundColor(.black)
//                    .frame(width: 322, alignment: .top)
//                    .padding()
//            }
//            Button(action: {
//                self.isShowed=false
//                self.changeColor+=1
//            }, label: {
//                Text("Done")
//            })
//        }
//    }
//}
//
///*
// #Preview {
// ModalMaterialsView()
// }
// */
