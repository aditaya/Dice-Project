//
//  ContentView.swift
//  Dice.SwiftUI
//
//  Created by Vineet Mahali on 12/07/20.
//  Copyright © 2020 Aditaya Rana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceName = "DiceOne"
    @State var rightDiceName = "DiceFour"
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(name: leftDiceName).padding()
                    DiceView(name: rightDiceName).padding()
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    let diceName = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
                    self.leftDiceName = diceName.randomElement()!
                    self.rightDiceName = diceName.randomElement()!
                    
                }) {
                    
                    Text("Roll").font(.system(size: 50)).fontWeight(.bold).foregroundColor(.white).padding()
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
    let name: String
    var body: some View {
        Image(name).resizable().aspectRatio(1, contentMode: .fit)
    }
}
