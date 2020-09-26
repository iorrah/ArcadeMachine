//
//  ContentView.swift
//  ArcadeMachine
//
//  Created by Iorrah Gonzalez on 26.09.20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var symbols = ["apple", "donut", "pizza"]
    @State private var numbers = [0, 0, 0]
    @State private var bet = 5
    @State private var won = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack {
                
                Spacer()
                
                // Title
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Machine Arcade")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                // Creadits
                
                VStack {
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.green)
                        
                        Text("You won!")
                            .bold()
                            .foregroundColor(.black)
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.green)
                    }.opacity(self.won ? 1 : 0)
                    
                    Text("Credits: " + String(self.credits))
                        .foregroundColor(.black)
                        .padding(.all, 10)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                }
                
                Spacer()
                
                // Cards
                HStack {
                    CardView(symbol: $symbols[numbers[0]])
                    CardView(symbol: $symbols[numbers[1]])
                    CardView(symbol: $symbols[numbers[2]])
                }
                
                Spacer()
                
                // Button
                Button(action: {
                    
                    self.credits += 1
                    
                    // Shufle the images
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    // Check winnings
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
                        // Won
                        self.won = true
                        self.credits += self.bet * 10
                    } else {
                        // Lost
                        self.won = false
                        self.credits -= self.bet
                    }
                    
                }, label: {
                    Text("Spin")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.all, 15)
                        .padding([.leading, .trailing], 35)
                        .background(Color.pink)
                        .cornerRadius(10)
                })
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
