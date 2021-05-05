//
//  Country.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/5/21.
//

import Foundation
import SwiftUI

// Identifiable is used when asigning a type of an id to an the struct
// it is telling swift that it can be uniquely identifiable
struct Country: Identifiable {
    // Used to hold the country-specific data gotten from API
    
    var id = UUID() // Lets swift assign and id automatically
    var name: String // Holds the name of a country
    var alpha2Code: String // 2 character country code (id) corresponds to iso2
    var alpha3Code: String // 3 character country code (id) corresponds to iso3
    var subregion: String // String corresponding to the subregieon, eg Northern Africa
    var population: Double
    var lat: Float  // latitude
    var long: Float // longitude
    var flag: String //url with flag of country
}


