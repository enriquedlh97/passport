//
//  File.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//

import Foundation
import SwiftUI

extension Font {
    
    //Fuente: Montserrat regular (Neutra)
    public static func Mon(size: CGFloat) -> Font {
        return Font.custom("Montserrat-Regularr", size: size)
    }
    
    //Fuente: Montserrat bold (Neutra)
    public static func MonB(size: CGFloat) -> Font {
        return Font.custom("Montserrat-SemiBold", size: size)
    }
    
    // (Decorada)
    public static func Lemon(size: CGFloat) -> Font {
        return Font.custom("LemonMilk", size: size)
    }
    
    // (Decorada)
    public static func London(size: CGFloat) -> Font {
        return Font.custom("LondonTube-MABx", size: size)
    }

}
