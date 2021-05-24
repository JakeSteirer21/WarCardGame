//
//  ContentView.swift
//  War
//
//  Created by Jake Steirer on 5/13/21.
//  Copyright © 2021 Jake Steirer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 115.0) {
                Image("logo")
                HStack(spacing: 75.0) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                Button(action: {
                    // Generate random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    // Update the cards
                    self.playerCard = "card\(playerRand)"
                    self.cpuCard = "card\(cpuRand)"
                    // Update the score
                    if playerRand > cpuRand {
                        self.playerScore += 1
                    } else if playerRand == cpuRand {
            
                    } else {
                        self.cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                    
                HStack(spacing: 50.0) {
                    VStack(spacing: 25.0) {
                        Text("Player").foregroundColor(Color.white).font(.system(size: 30))
                        Text(String(playerScore)).foregroundColor(Color.white).font(.system(size: 30))
                    }
                    VStack(spacing: 25.0) {
                       Text("CPU")
                        .foregroundColor(Color.white).font(.system(size:30))
                        Text(String(cpuScore)).foregroundColor(Color.white).font(.system(size: 30))
                    }
                    
                }
            
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
