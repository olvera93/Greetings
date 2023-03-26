//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 22/03/23.
//

import SwiftUI

let LEFT_TO_RIGHT = "leftToRight"


@main
struct GreetingsApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirectionString") var layoutDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        layoutDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
    }
}
