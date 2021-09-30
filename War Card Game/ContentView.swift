//
//  ContentView.swift
//  War Card Game
//
//  Created by Martin Matzer on 26.06.21.
//

import SwiftUI

struct ContentView: View {
    // @State properties are requiered to be able to update the value of the properties
    // When @State properties are changing, the UI will get updated automatically
    // declared as private var because they are only used in this ContentView structure
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background").ignoresSafeArea()
        
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
             
                // Button with Image
                Button(action: {
                    // When the Button gets pressed we will update the data in the State properties and this will update the UI automatically
                    // Generate a random number between 2 and 14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    // Update the cards
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    // Update the score
                    if playerRandom > cpuRandom {
                        playerScore += 1
                    }
                    else {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                .padding()
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.padding()
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }.padding()
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        
        }
        
        
        
        
        
        
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
