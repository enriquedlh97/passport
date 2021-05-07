//
//  CountryView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/6/21.
//

import SwiftUI
import Kingfisher

struct CountryView: View {
    
    var country: Country
    var region: String
    @StateObject var data: DataModel
    
    var body: some View {
        VStack {
            KFImage(URL(string: country.flag)!)
                .resizable()
                .frame(width: 240, height: 138)
                .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.black, lineWidth: 1))
                .padding(.top, 30)
            VStack {
                // Contains DataView
                DataView(title: "Country:", text: country.name, isValue: false)
                DataView(title: "Capital:", text: country.capital, isValue: false)
                DataView(title: "Subregion:", text: country.subregion, isValue: false)
                DataView(title: "Population:", value: country.population, isValue: true)
                Spacer()
                HStack {
                    Text("Visited")
                    // Right side
                    AddToVisitedView(country: country, region: region)
                        //.padding(.trailing, 20)
                }
            }
            .padding(.horizontal, 80)
            Spacer()
            // Here goes MapView
            MapView(country: country)
                .padding(.bottom, 40)
        }
        .navigationBarTitle(country.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(country: Country.defaultCountry, region: "africa", data: DataModel())
    }
}
