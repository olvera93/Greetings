//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 26/03/23.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            HStack {
                
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                
            }
        }
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
