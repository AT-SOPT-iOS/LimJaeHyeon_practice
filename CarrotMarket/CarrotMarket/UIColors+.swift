//
//  UIColors+.swift
//  CarrotMarket
//
//  Created by 임재현 on 4/11/25.
//

import UIKit

extension UIColor {
    // RGB 값으로 색상 생성
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    // HEX 코드로 색상 생성
    convenience init(hex: String,alpha: CGFloat = 1.0) {
        var hexFormatted = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16),
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
    
    static let PrimaryOrange = UIColor(hex: "EE7933")
    static let Grey200 = UIColor(hex: "626262")
    static let Grey300 = UIColor(hex: "9C9C9C")
    static let Grey400 = UIColor(hex: "ADB0B8")
    static let Grey500 = UIColor(hex: "DDDEE2")
    
}
