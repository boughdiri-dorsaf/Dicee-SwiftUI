//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Boughdiri Dorsaf on 23/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    //Allows the variable to be modified dynamically.
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(numdice: leftDiceNumber)
                    DiceView(numdice: rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let numdice: Int
    
    var body: some View {
        Image("dice\(numdice)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
