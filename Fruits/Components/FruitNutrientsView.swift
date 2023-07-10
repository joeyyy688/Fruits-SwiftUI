//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let availableNutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< availableNutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 3)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(availableNutrients[item])
                            
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body, weight: .bold))
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.light)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
