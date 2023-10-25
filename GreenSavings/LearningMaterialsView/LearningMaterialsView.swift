//
//  LearningMaterialsView.swift
//  GreenSavings
//
//  Created by Davide Galdiero on 20/10/23.
//

import SwiftUI

struct LearningMaterialsView: View {
    
    @State var showModal=false
    
    var item: ItemViewModel
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                //learning Materials card
                ForEach(item.learningMaterials){ learningMaterials in
                    ZStack(alignment: .leading){
                        if learningMaterials.unlock {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350, height: 80)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                .foregroundColor(learningMaterials.backgroundColor)
                            
                            Text(learningMaterials.learningMaterialsTitle)
                                .font(
                                    Font.custom("SF Pro Display", size: 34)
                                        .weight(.medium)
                                )
                                .padding()
                        }
                        else{
                            Rectangle()
                                .frame(width: 350, height: 80)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                .foregroundColor(.clear)
                                .background(Color(red: 0.36, green: 0.35, blue: 0.35).opacity(0.88))
                                .cornerRadius(20)
                            Text(learningMaterials.learningMaterialsTitle)
                                .font(
                                    Font.custom("SF Pro Display", size: 34)
                                        .weight(.medium)
                                )
                                .padding()
                        }
                    }.onTapGesture {
                        self.showModal=true
                    }
                    .sheet(isPresented: $showModal, content: {
                        ModalMaterialsView(isShowed: $showModal, learningMaterials: learningMaterials)
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

