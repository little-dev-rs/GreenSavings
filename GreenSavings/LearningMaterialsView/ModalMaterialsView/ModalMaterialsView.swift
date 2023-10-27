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
    
    @Binding var changeColor: Int
    
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 347, height: 246)
                .background(
                    Image(learningMaterials.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 347, height: 246)
                        .clipped()
                )
                .cornerRadius(20)
            ScrollView(.vertical){
                Text(learningMaterials.textModal)
                    .lineLimit(nil)
                    .font(
                        Font.custom("SF Pro Display", size: 18)
                            .weight(.medium)
                    )
                    .kerning(0.374)
                    .foregroundColor(.black)
                    .frame(width: 322, alignment: .top)
                    .padding()
            }
            Button(action: {
                self.isShowed=false
                self.changeColor+=1
            }, label: {
                Text("Done")
            })
        }
    }
}

/*
 #Preview {
 ModalMaterialsView()
 }
 */
