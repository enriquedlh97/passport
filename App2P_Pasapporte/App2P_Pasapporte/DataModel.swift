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
    
    @Published var africa: Region?
    @Published var americas: Region?
    @Published var asia: Region?
    @Published var europe: Region?
    @Published var oceania: Region?
    
    init() {
        getData()
    }
    
    func getData() {
        
        let regions = ["africa", "americas", "asia", "europe", "oceania"]
        
        for region in regions {
            
            loadRegionData(regionName: region)
        }
        
    }
    
    func loadRegionData(regionName: String) {
        
        var regionCountries = [Country]()
        
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
                //print(item.1["latlng"][0])
                
                
                //                 Each item corresponds to a country. So, for each item, a Country object is created and the item's data is saved as the object's attributes. All items/countries of the same region are appended to the corresponding region property of the DataModel
                country = Country(
                    name: item.1["name"].stringValue,
                    alpha2Code: item.1["alpha2Code"].stringValue,
                    alpha3Code: item.1["alpha2Code"].stringValue,
                    subregion: item.1["subregion"].stringValue,
                    population: item.1["population"].doubleValue,
                    lat: item.1["latlang"][0].floatValue,
                    long: item.1["latlang"][1].floatValue,
                    flag: "https://disease.sh/assets/img/flags/\(item.1["alpha2Code"].stringValue.lowercased()).png")
                
                // Once this is done, the object is appended to the Regions county property array
                regionCountries.append(country)
                
                
            }
            
            switch regionName {
            case "africa":
                self.africa = Region(regionName: regionName, countriesList: regionCountries)
            case "americas":
                self.americas = Region(regionName: regionName, countriesList: regionCountries)
            case "asia":
                self.asia = Region(regionName: regionName, countriesList: regionCountries)
            case "europe":
                self.europe = Region(regionName: regionName, countriesList: regionCountries)
            case "oceania":
                self.oceania = Region(regionName: regionName, countriesList: regionCountries)
                
            default:
                print("None")
            }
            
        }
    }
}




