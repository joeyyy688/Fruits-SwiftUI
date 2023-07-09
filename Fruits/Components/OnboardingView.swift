//
//  OnboardingView.swift
//  Fruits
//
//  Created by Joseph on 7/9/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(fruitsData) { item in
                FruitCardView(
                    fruitType: item
                )
            }
        }
        .tabViewStyle(
            PageTabViewStyle()
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            
    }
}
