//
//  ContentView.swift
//  Weather
//
//  Created by chan on 2023/08/13.
//

import SwiftUI

struct ContentView: View {
    @State private var userId: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            TextField("사용자 아이디를 입력해주세요.", text: $userId)
                .background(Color(red: 175, green: 175, blue: 175))
                .textFieldStyle(.roundedBorder).padding()
            
            Button(action: {
                print(userId)
            }) {
                Text("Test")
                    .frame(width: 350, height: 20)
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
