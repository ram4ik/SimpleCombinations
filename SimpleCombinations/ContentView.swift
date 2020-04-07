//
//  ContentView.swift
//  SimpleCombinations
//
//  Created by Ramill Ibragimov on 07.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var listOfColors: [Color] = [
        Color.red,
        Color.blue,
        Color.orange
    ]
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("\(self.counter)")
                .padding()
            
            ForEach(0..<listOfColors.count) { i in
                Button(action: {
                    self.counter += 1
                }) {
                    Text("This color is \(self.listOfColors[i].description)")
                        .padding()
                        .background(self.listOfColors[i])
                        .cornerRadius(15)
                        .padding()
                    
                }.foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
