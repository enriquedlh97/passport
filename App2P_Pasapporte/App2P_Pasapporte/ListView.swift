//
//  ListView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//  Updated by Enrique Diaz de Leon Hicks 05/05/2021
//

// LISTA DE PAÍSES/CIUDADES (DEPENDE LA API QUE ENCUENTREN)
//

import SwiftUI

struct ListView: View {
    @StateObject var data = DataModel()
    @State var text = ""
    @State var indexSelected: Int = 0
    
    var body: some View {
        
        //NavigationView {
            VStack {
                SearchBarView(text: $text)
                List {
                    Section(
                        header: Text("Americas"),
                        content: {
                            ForEach(data.americas?.countriesList.filter {$0.name.contains(text) || text.isEmpty} ?? [Country.defaultCountry]) { item in
                                NavigationLink(
                                    destination: CountryView(country: item, region: "americas", data: data),
                                    label: {CountryCellView(country: item, region: "americas")}
                                )
                                
                                // .listRowBackground(Color(.blue))
                                
                            }
                        })
                    Section(
                        header: Text("Europe"),
                        content: {
                            ForEach(data.europe?.countriesList.filter {$0.name.contains(text) || text.isEmpty} ?? [Country.defaultCountry]) { item in
                                
                                NavigationLink(
                                    destination: CountryView(country: item, region: "europe", data: data),
                                    label: {CountryCellView(country: item, region: "europe")}
                                )
                                
                                //.listRowBackground(Color(.blue))
                                
                            }
                        })
                    Section(
                        header: Text("Africa"),
                        content: {
                            ForEach(data.africa?.countriesList.filter {$0.name.contains(text) || text.isEmpty} ?? [Country.defaultCountry]) { item in
                                
                                NavigationLink(
                                    destination: CountryView(country: item, region: "africa", data: data),
                                    label: {CountryCellView(country: item, region: "africa")}
                                )
                                
                                // .listRowBackground(Color(.blue))
                                
                            }
                            
                        })
                    Section(
                        header: Text("Asia"),
                        content: {
                            ForEach(data.asia?.countriesList.filter {$0.name.contains(text) || text.isEmpty} ?? [Country.defaultCountry]) { item in
                                
                                NavigationLink(
                                    destination: CountryView(country: item, region: "asia", data: data),
                                    label: {CountryCellView(country: item, region: "asia")}
                                )
                                
                                //.listRowBackground(Color(.blue))
                                
                            }
                        })
                    Section(
                        header: Text("Oceania"),
                        content: {
                            ForEach(data.oceania?.countriesList.filter {$0.name.contains(text) || text.isEmpty} ?? [Country.defaultCountry]) { item in
                                
                                NavigationLink(
                                    destination: CountryView(country: item, region: "oceania", data: data),
                                    label: {CountryCellView(country: item, region: "oceania")}
                                )
                                
                                //.listRowBackground(Color(.blue))
                                
                            }
                        })
                }
                
                .listStyle(PlainListStyle())
                
            }
           
            
            
        //}

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
