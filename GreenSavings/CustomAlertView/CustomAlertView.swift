//
//  Alert.swift
//  GreenSavings
//
//  Created by Svetlana  on 25/10/23.
//

import SwiftUI

struct AlertVModel {
    let title: String
    let description: String
    let imageName: String
    let buttonTitle: String
}

public struct CustomAlertView: View {
    
    @State private var offset: CGFloat = 1000
    @Binding var isActive: Bool
    
    var model: PlantCardModel
    
    let title: String = "New plant!"
    let description: String = "You have unlocked a %@, go to My Garden to see it! Also you have unlocked a new step to learn."
    let buttonTitle: String = "Done"
    let action: () -> ()
    
    public var body: some View {

        ZStack {
    
            Color(.black)
                .opacity(0.1)

            VStack(alignment: .center) {
                
                Text(title)
                    .font(.title2).bold()
                    .padding(.vertical, 10)
                
                Text(String(format: description, model.name))
                    .multilineTextAlignment(.center)
                    .font(.body)
                
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .cornerRadius(20)
                    .padding(.top, 10)
                
                Button {
                    action()
                    close()
                } label: {
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.green)
                        
                        Text(buttonTitle)
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding()
                        
                    }
                    .padding()
                    
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                }
                
            }
            
        }
        .ignoresSafeArea()
    }
    
    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActive = false
        }
    }
}

//struct Alert_Previews: PreviewProvider {
//    @Binding var isActive: Bool
//    static var previews: some View {
//        CustomAlertView(isActive: $isActive, model: .init(name: "", description: "", imageName: ""), action: {})
//    }
//}
