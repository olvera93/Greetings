//
//  ContentView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 22/03/23.
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

/// This is the main view of the Greetings app.
struct ContentView: View {
    
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


/// This contain the App title and a randomly changing caption
/// upon tapping the caption and a colorful circle that rotates on tap.
struct TitleView: View {
    
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let caption: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring IOS 16 programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge")
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Text(LocalizedStringKey("Greetings"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(caption[captionIndex])
                    .font(.headline)
                    .fontWeight(.thin)
            }.padding()
                .onTapGesture {
                    captionIndex = Int.random(in: 0..<caption.count)
                }
            
            Spacer()
            
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(
                    colors: [
                        .pink, .purple, .blue, .orange, .yellow]
                ), center: .center, angle: .zero),
                lineWidth: 15)
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .frame(maxWidth: 70, maxHeight: 70)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().preferredColorScheme(.dark)
    }
}

/// This is the text view in the app whose colors can change randomly
/// after being tapped.
struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
     let colors: [Color] = [
        .red, .green, .blue, .orange,
        .yellow, .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0.5, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20.0)
            .shadow(color:  color.opacity(0.4), radius: 5, x: 10, y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}

/// This is the background view which contains a linear gradient.
struct BackgroundView: View {
    var body: some View {
        
        LinearGradient(colors: [Color("blue"), Color("blue2")], startPoint: .topLeading, endPoint: .bottomLeading)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}
