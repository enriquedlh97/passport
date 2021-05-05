//
//  DataModel.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/5/21.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

class DataModel: ObservableObject {
    
    @Published var africa = [Region]()
    @Published var americas = [Region]()
    @Published var asia = [Region]()
    @Published var europe = [Region]()
    @Published var oceania = [Region]()
    
    init() {
        getData()
    }
    
    func getData() {
        
        let regions = ["africa", "americas", "asia", "europe", "oceania"]
        
    }
    
    func loadRegionData(region: String) {
        
        let URL = "https://restcountries-v1.p.rapidapi.com/"
        
    }
    
    func loadFlag(iso2: String) {
        
    }
    
}
