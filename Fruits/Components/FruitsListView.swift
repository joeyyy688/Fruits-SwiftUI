//
//  FruitsList.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct FruitsListView: View {
    
    @State private var isSettingsShowing: Bool = false
    
    var body: some View {
        NavigationView {
            
            List(fruitsData){ item in
                
                NavigationLink{
                    FruitsDetailsView(fruit: item)
                }label: {
                    FruitRowView(fruit: item)
                }
                
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Fruits")
            .toolbar(content: {
                Button(action: {
                    isSettingsShowing = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $isSettingsShowing, content: {
                    SettingsView()
                })
            })
        }
        .navigationViewStyle(.stack)
    }
}

struct FruitsList_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
