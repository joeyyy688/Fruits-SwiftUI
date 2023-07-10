//
//  FruitsList.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct FruitsListView: View {
    var body: some View {
        
        NavigationView {
            
            List(fruitsData.shuffled()){ item in
                
                NavigationLink{
                    FruitsDetailsView(fruit: item)
                }label: {
                    FruitRowView(fruit: item)
                }
                
            }
            .navigationTitle("Fruits")
            .listRowSeparator(.hidden)
            
            
        }
        
    }
}

struct FruitsList_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
