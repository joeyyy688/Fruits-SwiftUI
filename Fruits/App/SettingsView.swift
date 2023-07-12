//
//  SettingsView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                            .padding(.vertical, 7)
                            .font(.system(.footnote))
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOnboarding ? "RESTARTED" : "RESTART", isOn: $isOnboarding)
                            .foregroundColor(isOnboarding ? .green : .secondary)
                            .fontWeight(.bold)
                            .animation(.easeInOut(duration: 0.2), value: isOnboarding)
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            )
                    }//: GROUPBOX
                    .padding(.vertical, 20)
                    
                    GroupBox(
                        label: CustomSettingsLabelView(labelText: "application", iconName: "apps.iphone")
                    
                    ){
                        
                        SettingsRowView(leadingText: "Developer", trailingText: "John / Jane")
                        
                        SettingsRowView(leadingText: "Designer", trailingText: "Robert")
                        
                        SettingsRowView(leadingText: "Compatibility", trailingText: "iOS 15")
                        
                        SettingsRowView(leadingText: "Website", linkText: "Portfolio", linkUrl: "github.com/joeyyy688")
                        
                        SettingsRowView(leadingText: "Twitter", linkText: "@apple", linkUrl: "twitter.com/apple")
                        
                        SettingsRowView(leadingText: "SwiftUI", trailingText: "2.0")
                        
                        SettingsRowView(leadingText: "Version", trailingText: "1.0.0")
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
