//
//  You.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import SwiftUI

struct You: View {
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        VStack {
            Text("あなた").padding()
            Text(viewModel.yourHand.rawValue)
                .font(.system(size: 36))
                .bold()
                .padding()
            HStack {
                Spacer()
                Button("ぐー", action: {
                    duel(Hand.Rock)
                }).padding()
                
                Spacer()
                Button("ちょき", action: {
                    duel(Hand.Sescissors)
                }).padding()
                
                Spacer()
                Button("ぱー", action: {
                    duel(Hand.Paper)
                }).padding()
                Spacer()
            }.padding()
        }.padding()
    }
    
    func duel(_ yourHand: Hand) {
        guard let opponentHand = [Hand.Rock, Hand.Sescissors, Hand.Paper].randomElement() else {
            return
        }

        viewModel.yourHand = yourHand
        viewModel.opponentHand = opponentHand
        
        var gameState: GameState
        switch yourHand {
        case Hand.Rock:
            switch opponentHand {
            case Hand.Rock:
                gameState = GameState.Draw
            case Hand.Sescissors:
                gameState = GameState.Win
            case Hand.Paper:
                gameState = GameState.Lose
            case Hand.None:
                gameState = GameState.Init
            }
        case Hand.Sescissors:
            switch opponentHand {
            case Hand.Rock:
                gameState = GameState.Lose
            case Hand.Sescissors:
                gameState = GameState.Draw
            case Hand.Paper:
                gameState = GameState.Win
            case Hand.None:
                gameState = GameState.Init
            }
        case Hand.Paper:
            switch opponentHand {
            case Hand.Rock:
                gameState = GameState.Win
            case Hand.Sescissors:
                gameState = GameState.Lose
            case Hand.Paper:
                gameState = GameState.Draw
            case Hand.None:
                gameState = GameState.Init
            }
        case Hand.None:
            gameState = GameState.Init
        }
        viewModel.gameState = gameState
    }
}

struct You_Previews: PreviewProvider {
    static var previews: some View {
        You()
    }
}
