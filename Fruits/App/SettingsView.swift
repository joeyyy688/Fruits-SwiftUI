//
//  SettingsView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var restartOnboarding = false
    
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    
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
                            }//: VSTACK
                        }//: HSTACK
                    }//: GROUPBOX
                    
                    
                    GroupBox(
                        label: CustomSettingsLabelView(labelText: "customization", iconName: "paintbrush")
                    ){
                        Divider().padding(.vertical, 5)
                        
                        Text("If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .font(.system(.footnote))
                        
                        GroupBox(
                            content: {
                                Toggle("RESTARTED", isOn: $restartOnboarding)
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            }
                        )
                    }//: GROUPBOX
                    .padding(.vertical, 20)
                    
                    GroupBox(
                        label: CustomSettingsLabelView(labelText: "application", iconName: "apps.iphone")
                    
                    ){
                        Divider().padding(.vertical, 5)
                        
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            SettingsRowView(leadingText: "Developer", trailingText: "John / Jane")
                            Divider().padding(.vertical, 5)
                        }
                    }
                    
                    
                }// VSTACK
                .navigationBarTitle("Settings")
                .toolbar(content: {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .bold()
                    })
                })
            .padding()
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
