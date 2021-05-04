//
//  ContentView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .padding()
            .background(
            Image("H_BG-5")
                .scaleEffect(x: 0.55, y: 0.55, anchor: .center)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
