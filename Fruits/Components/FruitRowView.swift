//
//  FruitRow.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        
        HStack{
            
            ZStack {
                Image(fruit.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90, alignment: .center)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                    .padding(.vertical, 13)
                    .padding(.horizontal, 13)
                    
            }
            .background(
                LinearGradient(
                    colors: [fruit.gradientColors[0], fruit.gradientColors[1]],
                    startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(20)
            
            
            VStack(alignment: .leading) {
                Text(fruit.title)
                    .font(.system(.title, weight: .semibold))
                
                
                Text(fruit.headline)
                    .font(.system(.subheadline))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
            }
            
        }
    }
}

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .padding()
    }
}
