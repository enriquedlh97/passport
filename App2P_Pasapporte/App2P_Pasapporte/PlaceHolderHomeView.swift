//
//  PlaceHolderHomeView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/4/21.
//

import SwiftUI

struct PlaceHolderHomeView: View {
    
    @State var place_holder_intro = true
    
    var body: some View {
        
        Group {
            if place_holder_intro {
                
                Text("")
                    .padding()
                    .background(
                        Image("H_BG-5")
                            .scaleEffect(x: 0.55, y: 0.7, anchor: .center)
                    )
                
            } else {
                HomeView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                
                self.place_holder_intro = false
            }
            
        }
    }
}

struct PlaceHolderHomeView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceHolderHomeView()
    }
}
