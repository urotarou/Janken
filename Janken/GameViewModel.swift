//
//  ViewModel.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published var gameState: String = "じゃん...けん..."
    @Published var opponentHand: String = "うーむ..."
    @Published var yourHand: String = "うーむ..."
    
    func duel(_ yourHand: Hand) {
        guard let opponentHand = [Hand.Rock, Hand.Sescissors, Hand.Paper].randomElement() else {
            return
        }

        switch yourHand {
        case .Rock:
            self.yourHand = "ぐー"
        case .Sescissors:
            self.yourHand = "ちょき"
        case .Paper:
            self.yourHand = "ぱー"
        default:
            break
        }

        switch opponentHand {
        case .Rock:
            self.opponentHand = "ぐー"
        case .Sescissors:
            self.opponentHand = "ちょき"
        case .Paper:
            self.opponentHand = "ぱー"
        default:
            break
        }
        

        let result = (yourHand.rawValue - opponentHand.rawValue + 3) % 3
        switch result {
        case 0:
            self.gameState = "あいこ"
        case 1:
            self.gameState = "負け..."
        case 2:
            self.gameState = "勝ち!!"
        default:
            break
        }
    }
}
