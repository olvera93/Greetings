//
//  MainView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 26/03/23.
//

import SwiftUI

struct MainView: View {
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    @Environment(\.verticalSizeClass)
    var verticalSizeClass
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            // Landscape mode ?
            LandscapeGreetingsView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
