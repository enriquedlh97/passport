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
        
        for region in regions {
            
            var regionProperty: Region
            
            regionProperty.regionName = region
            
            loadRegionData(regionName: region, regionProperty: regionProperty)
        }
        
    }
    
    func loadRegionData(regionName: String, regionProperty: Region) {
        
        let URL = "https://restcountries-v1.p.rapidapi.com/region/\(regionName)"

        // Makes request with specified parameters to get genres data
        AF.request(URL, method: .get, encoding: URLEncoding.default, headers: HTTPHeaders(headers)).responseData { data in
            // Decodes the data saved in the data variable gotten by the .responseData
            let json = try! JSON(data: data.data!)

            // Creates country variable to hold country-sepecific data
            var country: Country
            
            //print(json[0]["name"])
            // Loops over array to get and save the data
            for item in json {
                print(item.1["region"])
                
                // Each item corresponds to a country. So, for each item, a COuntry object is created and the item's data is saved as the object's attributes. All items/countries of the same region are appended to the corresponding region property of the DataModel
                genre = Genre(
                    id: g.1["id"].intValue,
                    name: g.1["name"].stringValue)
                // One this is done, the objetc is appended to the genre array
                self.genres.append(genre)
            }
        }
        
    }
    
    func loadFlag(iso2: String) {
        
    }
    
}
