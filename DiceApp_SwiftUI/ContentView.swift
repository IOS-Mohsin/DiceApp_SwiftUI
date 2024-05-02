//
//  ContentView.swift
//  DiceApp_SwiftUI
//
//  Created by See Sight Tours on 02/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Image("DiceeLogo")
                Spacer()
                HStack{
                    DiceView(n : leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                Button(action: {
                    rightDiceNumber = Int.random(in: 1...6)
                    leftDiceNumber = Int.random(in: 1...6)
                })
                {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color(.red))
                .padding(.bottom)
                
                


            }
        }
    }
}

struct DiceView: View {
    let n : Int
    
    var body: some View {
        Image("Dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}
#Preview {
    ContentView()
}


