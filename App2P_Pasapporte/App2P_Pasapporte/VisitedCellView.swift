//
//  VisitedCellView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/6/21.
//

import SwiftUI
import Kingfisher

struct VisitedCellView: View {
    
    @State var country: Visited
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    // Left side
                    KFImage(URL(string:  country.flag_wrapped )!)
                        .resizable()
                        //.scaledToFit()
                        .frame(width: 120, height: 69)
                        .padding(.top, -2)
                        .cornerRadius(6)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.black, lineWidth: 1)
                        )
                }
                VStack {
                    // Right side
                    Text(country.name_wrapped)
                        .font(.largeTitle)
                }                
            }
        }
    }
}

struct VisitedCellView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedCellView(country: Visited())
    }
}
