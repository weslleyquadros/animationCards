//
//  ContentView.swift
//  animationsSwiftUai
//
//  Created by Weslley Tavares de Aguiar e Quadros on 21/06/19.
//  Copyright © 2019 Weslley Tavares de Aguiar e Quadros. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack{
            CardBack()
            .animation(.spring())
                .offset(y: viewState.height > 100 ? -100 : 0)
                .tapAction{
                    self.viewState = .zero
            }
            
            
                    Card().offset(y: viewState.height)
                        .animation(.spring())
                        .gesture(
                            
                            DragGesture()
                                .onChanged{ value in
                                    self.viewState = value.translation
                                }
                                .onEnded{ value in
                                    if self.viewState.height > 200{
                                     CGSize(width: 0, height: 800)
                                    }
                                    else {
                                        self.viewState = .zero
                                    }
                            }
                    )
                }
        .padding(.top, 100.0).background(Color.white)
       
        
  
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
