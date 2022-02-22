//
//  State.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import Foundation

enum GameState: String {
    case Init = "じゃん...けん..."
    case Win = "勝ち!!"
    case Lose = "負け..."
    case Draw = "あいこ"
}
