//
//  MessagesView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 26/03/23.
//

import SwiftUI

/// This is a view that contains
/// a list of messages that change colors
/// randomly upon being clicked.
struct MessagesView: View {
    let messages = [
        DataItemModel(text: LocalizedStringKey("Hello there!"), color: Color("green")),
        DataItemModel(text: LocalizedStringKey("Welcome to Swift programming"), color: Color("gray")),
        DataItemModel(text: LocalizedStringKey("Are you ready to,"), color: Color("yellow")),
        DataItemModel(text: LocalizedStringKey("start exploring?"), color: Color("red")),
        DataItemModel(text: LocalizedStringKey("Boom."), color: Color("purple"))
        
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages, content: { dataItem in
                
                TextView(text: dataItem.text, color: dataItem.color)
            })
        }.padding()
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
