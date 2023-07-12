//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Joseph on 7/11/23.
//

import SwiftUI

struct SettingsRowView: View {
    var leadingText: String
    var trailingText: String?
    var linkText: String?
    var linkUrl: String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            
            HStack{
                Text(leadingText)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if linkText == nil && linkUrl == nil {
                    Text(trailingText!)
                        .fontWeight(.bold)
                }else {
                    Link(linkText!, destination: URL(string: "https://www.\(linkUrl!)")!)
                        .fontWeight(.bold)
                    
                    Image(systemName: "arrow.up.right.square")
                        .font(.system(.footnote))
                        .foregroundColor(.pink)
                        
                }
            }
        }
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leadingText: "Developer", trailingText: "John / Jane")
            .padding()
        
        SettingsRowView(leadingText: "Website", linkText: "Portfolio", linkUrl: "github.com/joeyyy688")
            .padding()
    }
}
