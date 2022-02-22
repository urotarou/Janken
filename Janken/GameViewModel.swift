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
}
