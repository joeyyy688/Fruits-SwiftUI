//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Joseph on 7/11/23.
//

import SwiftUI

struct SettingsRowView: View {
    var leadingText: String
    var trailingText: String
    
    var body: some View {
        HStack{
            Text(leadingText)
                .foregroundColor(.gray)
            
            Spacer()
            
            Text(trailingText)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leadingText: "Developer", trailingText: "John / Jane")
    }
}
