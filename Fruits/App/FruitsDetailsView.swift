//
//  FruitsDetailsView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct FruitsDetailsView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    FruitImageHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text(fruit.title)
                            .font(.system(.largeTitle, weight: .heavy))
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.system(.headline))
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView(fruitTitle: fruit.title)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                    
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}

struct FruitsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailsView(fruit: fruitsData[2])
    }
}
