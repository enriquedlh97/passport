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
    
    @Published var africa: Region
    @Published var americas: Region
    @Published var asia: Region
    @Published var europe: Region
    @Published var oceania: Region
    
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
        AF.request(URL, method: .get, encoding: URLEncoding.default, headers: HTTPHeaders(headers)).responseData { [self] data in
            // Decodes the data saved in the data variable gotten by the .responseData
            let json = try! JSON(data: data.data!)
            
            // Creates country variable to hold country-sepecific data
            var country: Country
            
            //print(json[0]["name"])
            // Loops over array to get and save the data
            for item in json {
                //print(item.1["latlng"][0])
                
                //loadFlag(iso3: item.1["alpha2Code"].stringValue)
                
                //                 Each item corresponds to a country. So, for each item, a COuntry object is created and the item's data is saved as the object's attributes. All items/countries of the same region are appended to the corresponding region property of the DataModel
                country = Country(
                    name: item.1["name"].stringValue,
                    alpha2Code: item.1["alpha2Code"].stringValue,
                    alpha3Code: item.1["alpha2Code"].stringValue,
                    subregion: item.1["subregion"].stringValue,
                    population: item.1["population"].doubleValue,
                    lat: item.1["latlang"][0].floatValue,
                    long: item.1["latlang"][1].floatValue,
                    flag: "")
                
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
    func loadFlag(iso3: String) {
        
        let url = "https://disease.sh/v3/covid-19/countries/countries/\(iso3)"
        
        var flag: String
        
        // Makes request to above URL and reads the data via .responseData
        AF.request(url).responseData { data in // data is going to contain all the data gotten from response
            
            // converts data from reponse into JSON
            let json = try! JSON(data: data.data!) // try is to catch exceptions inc ase it is not possible
            
            print(json["flag"].stringValue)
            
            
            //flag = json["flag"].stringValue
            
            //            for country in json {
            //                // generates temp file
            //                temp = Cases(country: country.1["country"].stringValue,
            //                             iso: country.1["countryInfo"]["iso3"].stringValue,
            //                             lat: country.1["countryInfo"]["lat"].floatValue,
            //                             long: country.1["countryInfo"]["long"].floatValue,
            //                             flag: country.1["countryInfo"]["flag"].stringValue,
            //                             cases: country.1["cases"].doubleValue,
            //                             deaths: country.1["deaths"].doubleValue,
            //                             recovered: country.1["recovered"].doubleValue,
            //                             active: country.1["active"].doubleValue,
            //                             critical: country.1["critical"].doubleValue,
            //                             population: country.1["population"].doubleValue,
            //                             continent: country.1["continent"].stringValue)
            //                unsortedList.append(temp) // adds temp file into unsorted list
            //            }
            
        }
        
        //return flag
        
    }
}


