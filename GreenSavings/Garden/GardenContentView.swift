//
//  GardenContentView.swift
//  GreenSavings
//
//  Created by GreenSavingsTeam on 20/10/23.
//

import SwiftUI

struct GardenContentView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 200)
        }
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()}) {
                Text("Categories") // TODO: move to viewModel
            }
        )
    }
}

struct GardenContentView_Previews: PreviewProvider {
    static var previews: some View {
        GardenContentView()
    }
}
