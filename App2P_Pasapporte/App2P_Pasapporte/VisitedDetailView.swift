//
//  VisitedDetailView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct VisitedDetailView: View {
    
    @StateObject var data: DataModel
    var country: Visited
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VisitedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedDetailView(data: DataModel(), country: Visited())
    }
}
