//
//  DataItemModel.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 26/03/23.
//

import SwiftUI

/// This is the data model of the messages
/// that will appear in the app.
/// It contains a text string and a color.
/// Moreover it inherits from the Identifiable protocol.
struct DataItemModel: Identifiable {
    var id = UUID()
    let text: LocalizedStringKey
    let color: Color
    
}
