//
//  Card.swift
//  animationsSwiftUai
//
//  Created by Weslley Tavares de Aguiar e Quadros on 21/06/19.
//  Copyright © 2019 Weslley Tavares de Aguiar e Quadros. All rights reserved.
//

import SwiftUI

struct Card : View {
     var body: some View {

    
            VStack{
                Text("Card").font(.largeTitle)
                    .fontWeight(.semibold)
                    .color(Color(hue: 0.545, saturation: 0.361, brightness: 1.0))
                
                Image("apple")

                }.frame(width:420, height: 800)
                .background(Color.blue)
                .cornerRadius(30)
                .shadow(radius: 30)
    
       
    }
}

#if DEBUG
struct Card_Previews : PreviewProvider {
    static var previews: some View {
        Card()
    }
}
#endif
