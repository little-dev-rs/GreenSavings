//
//  ContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel = ContentViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                ScrollView(.vertical, showsIndicators: false) {
                    
//                    Text(viewModel.greetingText)
//                        .font(.callout)
//                        .lineLimit(nil)
//                        .padding(0)

                    GardenView()
                        .padding(.top)
                    
                    RowView(model: .init(name: "Categories", items: viewModel.items, height: 140))
                }
                .padding()
                .navigationTitle(viewModel.navigationTitleText)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
