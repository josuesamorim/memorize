//
//  ContentView.swift
//  Memorize
//
//  Created by Josué Amorim on 10/11/21.
//

import SwiftUI

struct ContentView: View{
    var body: some View{
        HStack {
            CartView()
            CartView()
            CartView()
            CartView()
        }
       .padding(.horizontal)
       .foregroundColor(.red)
    }
}

struct CartView: View {
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack(content: {
            
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️").font((.largeTitle))
            } else {
                shape.fill()
            }
        })
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
