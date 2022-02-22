//
//  Result.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import SwiftUI

struct Result: View {
    @EnvironmentObject var viewModel: GameViewModel

    var body: some View {
        Text(viewModel.gameState.rawValue)
            .font(.system(size: 48))
            .foregroundColor(.red)
            .bold()
            .padding()
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
