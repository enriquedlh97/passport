//
//  Extensions.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//  Updated by Enrique Diaz de Leon Hicks 05/05/21
//

import Foundation

let headers = [
    "x-rapidapi-key": "f8ebd067cdmsh4cd4c53f3ae1900p16eb67jsn87aeea2d0e14",
    "x-rapidapi-host": "restcountries-v1.p.rapidapi.com"
]

extension Region {
    
    public static var defaultRegion = Region(regionName: "Africa", countriesList: [Country.defaultCountry])
    
}

extension Country {
    
    public static var defaultCountry = Country(name: "Algeria", alpha2Code: "DZ", alpha3Code: "DZA", subregion: "Northern Africa", population: 37900000, lat: 28, long: 3, flag: "https://disease.sh/assets/img/flags/dz.png", capital: "Algiers")
    
}

extension Media {
    
    public static var defaultMedia = Media(country: "France", city: "Paris", overview: "París, la capital de Francia, es una importante ciudad europea y un centro mundial del arte, la moda, la gastronomía y la cultura. Su paisaje urbano del siglo XIX está entrecruzado por amplios bulevares y el río Sena. Aparte de estos hitos, como la Torre Eiffel y la catedral gótica de Notre Dame del siglo XII, la ciudad es famosa por su cultura del café y las tiendas de moda de diseñador a lo largo de la calle Rue du Faubourg Saint-Honoré.",video: "https://youtu.be/UfEiKK-iX70", info: "https://es.wikipedia.org/wiki/Francia")
    
    
}
