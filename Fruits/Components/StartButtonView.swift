//
//  CardButtonView.swift
//  Fruits
//
//  Created by Joseph on 7/9/23.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Start button pressed")
        }, label: {
            HStack{
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.3)
            )
        })
        .accentColor(.white)
        
    }
}

struct CardButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
