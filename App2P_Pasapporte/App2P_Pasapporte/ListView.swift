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
    @State var indexSelected: Int = 0
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    Section(
                        header: Text("Africa"),
                        content: {
                            ForEach(data.africa?.countriesList ?? [Country.defaultCountry]) { item in
                                
                                    NavigationLink(
                                        destination: CountryView(),
                                        label: {
                                            VStack {
                                                Text(item.name)
                                                    .font(.largeTitle)
                                                  //  .foregroundColor(.white)
                                                    .padding()
                                            }
                                            
                                        })
                                        
                                       // .listRowBackground(Color(.blue))
                                
                            }
                            
                        })
                    Section(
                        header: Text("Americas"),
                        content: {
                            ForEach(data.americas?.countriesList ?? [Country.defaultCountry]) { item in
                                
                                    NavigationLink(
                                        destination: CountryView(),
                                        label: {
                                            VStack {
                                                Text(item.name)
                                                    .font(.largeTitle)
                                                   // .foregroundColor(.white)
                                                    .padding()
                                            }
                                            
                                        })
                                        
                                       // .listRowBackground(Color(.blue))
                                
                            }
                        })
                    Section(
                        header: Text("Asia"),
                        content: {
                            ForEach(data.asia?.countriesList ?? [Country.defaultCountry]) { item in
                                
                                    NavigationLink(
                                        destination: CountryView(),
                                        label: {
                                            VStack {
                                                Text(item.name)
                                                    .font(.largeTitle)
                                                  //  .foregroundColor(.white)
                                                    .padding()
                                            }
                                            
                                        })
                                        
                                        //.listRowBackground(Color(.blue))
                                
                            }
                        })
                    Section(
                        header: Text("Europe"),
                        content: {
                            ForEach(data.europe?.countriesList ?? [Country.defaultCountry]) { item in
                                
                                    NavigationLink(
                                        destination: CountryView(),
                                        label: {
                                            VStack {
                                                Text(item.name)
                                                    .font(.largeTitle)
                                                    //.foregroundColor(.white)
                                                    .padding()
                                            }
                                            
                                        })
                                        
                                        //.listRowBackground(Color(.blue))
                                
                            }
                        })
                    Section(
                        header: Text("Oceania"),
                        content: {
                            ForEach(data.oceania?.countriesList ?? [Country.defaultCountry]) { item in
                                
                                    NavigationLink(
                                        destination: CountryView(),
                                        label: {
                                            VStack {
                                                Text(item.name)
                                                    .font(.largeTitle)
                                                   // .foregroundColor(.white)
                                                    .padding()
                                            }
                                            
                                        })
                                        
                                        //.listRowBackground(Color(.blue))
                                
                            }
                        })
                }
                
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
