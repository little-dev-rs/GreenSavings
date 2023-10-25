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
            
            VStack {
                
                ScrollView(.vertical, showsIndicators: false) {

                    NavigationLink {
                        GardenContentView()
                    } label: {
                        GardenView() //TODO: pass image and height here via viewModel
                            .padding(.top)
                    }
                    
                    CategoriesRowView(model: .init(name: "Categories", items: viewModel.items)) //TODO: pass height via view model
                        .padding(.top)
                }
                .padding()
                .navigationTitle(viewModel.navigationTitleText)
                
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
