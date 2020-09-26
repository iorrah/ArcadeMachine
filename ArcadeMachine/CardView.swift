//
//  CardView.swift
//  ArcadeMachine
//
//  Created by Iorrah Gonzalez on 26.09.20.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol:String
    @Binding var background:Color
    
    var body: some View {
        Image(symbol)
        .renderingMode(.original)
        .resizable()
        .frame(width: 100.0, height: 100.0)
        .padding(10)
        .background(background.opacity(0.5))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("pizza"), background: Binding.constant(Color.white))
    }
}
