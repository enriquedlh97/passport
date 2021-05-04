//
//  File.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//

import Foundation
import SwiftUI

class MediaModel: ObservableObject {
    
    @Published var list = [Media]()
    @Published var weather = [Media]()
    @Published var visit = [Media]()
    
    
    init() {
        LoadInfo()
    }
    
    func LoadInfo() {
        
        var media: Media
        
        media = Media(country: "France", city: "Paris", overview: "París, la capital de Francia, es una importante ciudad europea y un centro mundial del arte, la moda, la gastronomía y la cultura. Su paisaje urbano del siglo XIX está entrecruzado por amplios bulevares y el río Sena. Aparte de estos hitos, como la Torre Eiffel y la catedral gótica de Notre Dame del siglo XII, la ciudad es famosa por su cultura del café y las tiendas de moda de diseñador a lo largo de la calle Rue du Faubourg Saint-Honoré.",video: "https://youtu.be/UfEiKK-iX70", info: "https://es.wikipedia.org/wiki/Francia")
        list.append(media)
        
    }

}
