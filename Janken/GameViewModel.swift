//
//  ViewModel.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published var gameState: GameState = .Init
    @Published var opponentHand: Hand = .None
    @Published var yourHand: Hand = .None
    
    func duel(_ yourHand: Hand) {
        guard let opponentHand = [Hand.Rock, Hand.Sescissors, Hand.Paper].randomElement() else {
            return
        }

        self.yourHand = yourHand
        self.opponentHand = opponentHand
        
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
        self.gameState = gameState
    }
}
