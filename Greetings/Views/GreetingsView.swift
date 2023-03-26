//
//  ContentView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 22/03/23.
//

import SwiftUI


/// This is the main view of the Greetings app.
struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            VStack(alignment: .leading) {
                
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView().preferredColorScheme(.dark)
    }
}

