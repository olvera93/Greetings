//
//  ContentView.swift
//  Greetings
//
//  Created by Gonzalo Olvera Monroy on 22/03/23.
//

import SwiftUI

struct DataItemModel: Identifiable {
    var id = UUID()
    let text: String
    let color: Color
    
}

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

struct MessagesView: View {
    let messages = [
        DataItemModel(text: "Hello there!", color: .green),
        DataItemModel(text: "Welcome to Swift programming", color: .gray),
        DataItemModel(text: "Are you ready to,", color: .yellow),
        DataItemModel(text: "start exploring?", color: .red),
        DataItemModel(text: "Boom.", color: .purple)
        
    ]
    
    var body: some View {
        ForEach(messages, content: { dataItem in
            
            TextView(text: dataItem.text, color: dataItem.color)
        })
    }
}


struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Exploring IOS 16 programming")
                .font(.headline)
                .fontWeight(.thin)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    
    let text: String
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


struct BackgroundView: View {
    var body: some View {
        
        LinearGradient(colors: [.blue, Color(red: 139/255, green: 80/255, blue: 240/255)], startPoint: .topLeading, endPoint: .bottomLeading)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}