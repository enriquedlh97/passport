//
//  CountryView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/6/21.
//

import SwiftUI
import Kingfisher

struct CountryView: View {
    
    @State var offset: CGSize = .zero
    var country: Country
    var region: String
    @StateObject var data: DataModel
    
    var body: some View {
        
        let arrastrar = DragGesture()
            .onChanged { value in
                
                self.offset = value.translation
            }
        
        ZStack {
            //Bandera que se puede arrastrar
            KFImage(URL(string: country.flag)!)
                .resizable()
                .frame(width: 240, height: 138, alignment: .top)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.black, lineWidth: 1))
                .offset(x: offset.width, y: offset.height)
                .padding(.bottom, 500)
                .gesture(arrastrar)
                .animation(.default)
                .shadow(color: Color("RaisinBlack").opacity(0.4), radius: 5, x: 5, y: 5)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            //Contenido de datos y mapa
            VStack {
                //Espacio vacio
                VStack {
                    VStack {
                        Spacer()
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .background(LinearGradient(gradient: Gradient(colors: [Color("Gradient1"), Color("Gradient3"), Color("Gradient2")]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .cornerRadius(8)
                .zIndex(3)
                
                //Datos
                VStack {
                    // Contains DataView
                    DataView(title: "Country:", text: country.name, isValue: false)
                    DataView(title: "Capital:", text: country.capital, isValue: false)
                    DataView(title: "Subregion:", text: country.subregion, isValue: false)
                    DataView(title: "Population:", value: country.population, isValue: true)
                    //Spacer()
                    VStack {
                        HStack {
                            Text("Visited")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 28))
                                .padding(.vertical)
                                .foregroundColor(Color("BlueGreen"))
                            // Right side
                            AddToVisitedView(country: country, region: region)
                            
                            
                        }
                        .padding(.top)
                        .padding(.bottom, -40)
                    }
                }
                .padding(.horizontal, 80)
                .padding(.vertical, 30)
                
                //Mapa
                VStack {
                    // Here goes MapView
                    MapView(country: country)
                        .padding(.bottom, 40)
                    Spacer()
                }
            }
            .background(Color("Cultured"))
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(country.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    
    
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(country: Country.defaultCountry, region: "africa", data: DataModel())
    }
}
