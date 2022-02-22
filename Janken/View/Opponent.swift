//
//  Opponent.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import SwiftUI

struct Opponent: View {
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        VStack {
            Text("相手").padding()
            Text(viewModel.opponentHand.rawValue)
                .font(.system(size: 36))
                .bold()
                .padding()
        }.padding()
    }
}

struct Opponent_Previews: PreviewProvider {
    static var previews: some View {
        Opponent()
    }
}
