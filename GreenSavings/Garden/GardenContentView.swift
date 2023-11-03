//
//  GardenContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 20/10/23.
//

import SwiftUI

struct GardenContentView: View {
    
    @Environment(\.presentationMode) var presentationMode

    var plants = MainViewModel().categories.items.flatMap { $0.learningMaterials }.map { $0.giftPlant }
//    var plants = MainViewModel().categories.items.flatMap { $0.learningMaterials }.filter({ $0.isLearned }).map { $0.giftPlant  }
    
    var body: some View {
        
        NavigationView {
    
            
            ZStack(alignment: .top) {
        
                
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                 
                        ScrollView {
                            
                            ForEach(plants) { plant in
                                PlantCardView(model: plant)
                                    .padding()
                            }
                
                        }
                        .mask(
                            LinearGradient(gradient: Gradient(colors: [.clear, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white, .white,.white, .white, .white, .white]),
                                           startPoint: .top, endPoint: .bottom)
                        )
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
        }
        .navigationTitle("My garden")
        
    }
}

struct GardenContentView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView()
    }
}


//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                VStack(spacing: 10) {
//                    ForEach(0..<50) { index in
//                        Text("Item \(index)")
//                            .frame(height: 44)
//                            .background(Color.blue)
//                            .foregroundColor(.white)
//                    }
//                }
//                .padding() // add padding to avoid overlapping
//            }
//            .mask(
//                LinearGradient(gradient: Gradient(colors: [.clear, .white, .clear]),
//                               startPoint: .top, endPoint: .bottom)
//            )
//            .navigationBarTitle("Title", displayMode: .inline)
//        }
//    }
//}
