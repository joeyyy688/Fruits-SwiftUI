//
//  FruitImageHeaderView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct FruitImageHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 6, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.7)
                
        }
        .frame(height: 450)
        .onAppear(perform: {
            withAnimation(.spring(), {
                isAnimating = true
            })
        })
    }
}

struct FruitImageHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitImageHeaderView(fruit: fruitsData[0])
    }
}
