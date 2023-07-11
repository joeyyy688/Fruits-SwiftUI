//
//  CustomSettingsLabelView.swift
//  Fruits
//
//  Created by Joseph on 7/11/23.
//

import SwiftUI

struct CustomSettingsLabelView: View {
    var labelText: String
    var iconName: String
    
    
    var body: some View {
        LabeledContent{
            Image(systemName: iconName)
                .font(.system(.body))
                .foregroundColor(.accentColor)
                
        } label: {
            Text(labelText.uppercased())
                .fontWeight(.semibold)
        }
    }
}

struct CustomSettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSettingsLabelView(labelText: "fructus", iconName: "info.circle")
            .padding()
    }
}
