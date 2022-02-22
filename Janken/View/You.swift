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
            Text(viewModel.yourHand)
                .font(.system(size: 36))
                .bold()
                .padding()
            HStack {
                Spacer()
                Button("ぐー", action: {
                    viewModel.duel(Hand.Rock)
                }).padding()
                
                Spacer()
                Button("ちょき", action: {
                    viewModel.duel(Hand.Sescissors)
                }).padding()
                
                Spacer()
                Button("ぱー", action: {
                    viewModel.duel(Hand.Paper)
                }).padding()
                Spacer()
            }.padding()
        }.padding()
    }
}

struct You_Previews: PreviewProvider {
    static var previews: some View {
        You()
    }
}
