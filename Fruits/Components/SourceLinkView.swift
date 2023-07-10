//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Joseph on 7/10/23.
//

import SwiftUI

struct SourceLinkView: View {
    
    var fruitTitle: String
    
    var body: some View {
        GroupBox{
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.m.wikipedia.org/wiki/\(fruitTitle)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruitTitle: "strawberry")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
