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
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            // Landscape mode ?
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
    }
}
