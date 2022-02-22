//
//  ContentView.swift
//  Janken
//
//  Created by urotarou on 2022/02/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Opponent()

            Spacer()
            Result()

            Spacer()
            You()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
