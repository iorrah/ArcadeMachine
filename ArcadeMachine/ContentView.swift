//
//  ContentView.swift
//  ArcadeMachine
//
//  Created by Iorrah Gonzalez on 26.09.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20.0) {
                
                Spacer()
                
                Image("system")
                
                Text("Arcade Machine")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button(action: {
                    
                    // TODO
                        
                }, label: {
                    Image("apple")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: /*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, radius: 3)
                    
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
