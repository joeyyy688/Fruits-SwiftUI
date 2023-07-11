//
//  SettingsView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                GroupBox(
                    label:  CustomSettingsLabelView(labelText: "fructus", iconName: "info.circle")
                ) {
                    Divider().padding(.vertical, 5)
                        
                    HStack (alignment: .center, spacing: 10) {
                            
                        Image("logo")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)
                            
                        VStack {
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.system(.footnote))
                        }
                    }//: HSTACK
                }//: LIST
                .navigationBarTitle("Settings")
            }// SCROLL VIRE
        }//: NAVIGATION VIEW
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .padding()
    }
}
