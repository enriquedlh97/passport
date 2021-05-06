//
//  DataView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/6/21.
//

import SwiftUI

struct DataView: View {
    
    var title: String
    var value: Double?
    var text: String?
    var isValue: Bool
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            if isValue {
            //Text(String(format: "%0.0f", value))
                Text(add_comma(value: value ?? 0))
            } else {
                Text(text ?? "")
            }
        }
    }
    
    func add_comma(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        let formattedAmount = formatter.string(from: value as NSNumber)!
        print(formattedAmount)
        return formattedAmount
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView(title: "Hi", value: 1, isValue: true)
    }
}
