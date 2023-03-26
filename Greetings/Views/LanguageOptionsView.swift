//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 26/03/23.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {
                    Text("English")
                })
                
                Button(action: {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {
                    Text("Spanish")
                })
            }
    }
}

struct LanguageOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
    }
}
