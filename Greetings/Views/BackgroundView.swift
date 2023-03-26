//
//  BackgroundView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 26/03/23.
//

import SwiftUI

/// This is the background view which contains a linear gradient.
struct BackgroundView: View {
    var body: some View {
        
        LinearGradient(colors: [Color("blue"), Color("blue2")], startPoint: .topLeading, endPoint: .bottomLeading)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
