//
//  FruitCardView.swift
//  Fruits
//
//  Created by Joseph on 7/9/23.
//

import SwiftUI

struct FruitCardView: View {
    @State private var isAnimating: Bool = false
    
    var fruitType: Fruit
    
    var body: some View {

            //CustomBackgroundCard()
            
            VStack( spacing: 20) {
                
                Image(fruitType.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 7)
                    .scaleEffect(isAnimating ? 1.0 : 0.5)
                
                Text(fruitType.title)
                    .font(.system(.largeTitle))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(fruitType.headline)
                    .font(.system(.title2, weight: .regular))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    
                    
                StartButtonView()
                

            }//VSTACK
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .center
            )
            .background(
                LinearGradient(
                    colors: [fruitType.gradientColors[0], fruitType.gradientColors[1]],
                    startPoint: .top, endPoint: .bottom)
                    
            )
            .cornerRadius(50)
            .onAppear{
                withAnimation(.easeInOut(duration: 0.5), {
                    isAnimating = true
                })
            }
            .padding()
            


        
    }//: BODY VIEW
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruitType: fruitsData[1])
    }
}
