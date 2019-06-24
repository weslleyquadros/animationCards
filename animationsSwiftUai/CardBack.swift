//
//  CardBack.swift
//  animationsSwiftUai
//
//  Created by Weslley Tavares de Aguiar e Quadros on 21/06/19.
//  Copyright © 2019 Weslley Tavares de Aguiar e Quadros. All rights reserved.
//

import SwiftUI

struct CardBack : View {
    var body: some View {
  
        VStack{
            Text("Card Back").font(.largeTitle)
                .fontWeight(.semibold)
                .color(Color(hue: 0.545, saturation: 0.361, brightness: 1.0))
            Image("swiftui")
            
            }.frame(width:420, height: 870)
            .background(Color.purple)
            .cornerRadius(30)
            .shadow(radius: 30)
        
        
    }
}

#if DEBUG
struct CardBack_Previews : PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
#endif
