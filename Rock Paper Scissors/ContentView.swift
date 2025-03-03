//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Imac on 25/02/25.
//

import SwiftUI

struct ContentView: View {
    let moves = ["✌️", "✋", "✊"]
    @State var playerMove: String = ""
    @State var compMove: String = ""
    
    @State var playerScore = 0
    @State var compScore = 0
    
    @State var result = "Press PLAY to Start"
    
    var body: some View {
        VStack {
            Spacer()
            Text("Rock Paper Scissors!")
            Spacer()
            HStack {
                Text(playerMove)
                Text(compMove)
            }
            .font(.largeTitle)
            Spacer()
            Button(action: {
                playerMove = generateMove()
                compMove = generateMove()
                updateScore()
            }, label: {
                Text("PLAY")
            })
            Spacer()
            Text(result)
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Player Score")
                    Text(String(playerScore))
                }
                Spacer()
                VStack {
                    Text("Computer Score")
                    Text(String(compScore))
                }
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
    
    func generateMove() -> String {
        let temp = Int.random(in: 1...3)
        if temp == 1 {
            return "✌️"
        } else if temp == 2 {
            return "✋"
        } else {
            return "✊"
        }
    }
    
    func updateScore() {
        if playerMove == "✌️" && compMove == "✋" {
            playerScore += 1
            result = "You win."
        } else if playerMove == "✋" && compMove == "✊" {
            playerScore += 1
            result = "You win."
        } else if playerMove == "✊" && compMove == "✌️" {
            playerScore += 1
            result = "You win."
        } else if playerMove == compMove {
            result = "Draw."
        } else {
            compScore += 1
            result = "Computer wins."
        }
    }
}



#Preview {
    ContentView()
}
