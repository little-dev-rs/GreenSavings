//
//  ContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct MainContentView: View {

    let viewModel = MainViewModel()

    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        NavigationLink {
                            GardenContentView()
                        } label: {
                            GardenCardView(gardenModel: viewModel.gardenModel,
                                           height: UIScreen.main.bounds.size.height * 0.2)
                        }
                        
                        CategoriesRowView(model: viewModel.categories, height: UIScreen.main.bounds.size.height * 0.50)
                        
                    }
                    .padding()
                    .navigationTitle(viewModel.navigationTitleText)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
