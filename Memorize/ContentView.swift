//
//  ContentView.swift
//  Memorize
//
//  Created by JosuΓ© Amorim on 10/11/21.
//

import SwiftUI

struct ContentView: View{
    
    var transport = ["π", "π", "π", "π", "π", "βοΈ", "π",
    "π", "π", "π", "β΅οΈ", "π’", "π"]
    
    var emojis = ["π", "π", "π", "π₯Ή","π","π", "π€£", "π₯²", "βΊοΈ"
                  , "π", "π₯°", "π", "π€ͺ", "π", "π"]
    
    var food = ["π", "π", "π", "π", "π", "π", "π", "π", "π", "π«", "π₯", "π₯₯", "π₯¦", "πΆ", "π₯", "π", "π§"]
    
    
   @State var emojiCount = 13
    
    
    var body: some View{
        
        VStack {
            appName
            ScrollView{
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(transport[0..<emojiCount], id: \.self, content: {
                    emoji in CartView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                })
            }
            .foregroundColor(.red)
            }
            
            Spacer()
            
            HStack{
                transportTheme
                Spacer()
                emojisTheme
                Spacer()
                foodTheme
            }
            .font(.largeTitle)
            .padding(.horizontal)
            
        }
       .padding(.horizontal)
       
    }
    
    var appName: some View{
        Text("Memorize!").font(.largeTitle)
    }
    
    var transportTheme: some View {
        Button(action: {}, label: {
            Text("π")
        })
    }
    
    var emojisTheme: some View {
        Button(action: {}, label: {
            Text("π").font(.largeTitle)
        })
    }
    
    var foodTheme: some View{
        Button(action: {}, label: {
            Text("π")
        })
    }

}

struct CartView: View {
    var content: String
    @State var isFaceUp: Bool = true
    @State var theme: Bool = true
    
    var body: some View {
        ZStack(content: {
            
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font((.largeTitle))
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
