//
//  Extension.swift
//  Week3
//
//  Created by 임재현 on 4/26/25.
//

import Foundation


import UIKit

enum ImageLiterals {
    // Xcode의 Asset Catalog는 "하위 폴더 구조"를 네이밍에 반영하지 않습니다.
    static var profile1: UIImage { .load(name: "user1") }
    static var profile2: UIImage { .load(name: "profile2") }
    static var profile3: UIImage { .load(name: "user3") }
    static var profile4: UIImage { .load(name: "user4") }
    static var profile5: UIImage { .load(name: "user5") }
    static var profile6: UIImage { .load(name: "user6") }
    static var profile7: UIImage { .load(name: "user7") }
    static var profile8: UIImage { .load(name: "user8") }
    static var profile9: UIImage { .load(name: "user9") }
    static var profile10: UIImage { .load(name: "user10") }
    
    static var product1: UIImage { .load(name: "Product1") }
    static var product2: UIImage { .load(name: "Product2") }
    static var product3: UIImage { .load(name: "Product3") }
    static var product4: UIImage { .load(name: "Product4") }
    static var product5: UIImage { .load(name: "Product5") }
    static var product6: UIImage { .load(name: "Product6") }
    static var product7: UIImage { .load(name: "Product7") }
    static var product8: UIImage { .load(name: "Product8") }
    static var product9: UIImage { .load(name: "Product9") }
    static var product10: UIImage { .load(name: "Product10") }
    
}


extension UIImage {
    static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: nil, compatibleWith: nil) else {
            return UIImage()
        }
        return image
    }
    
    static func load(systemName: String) -> UIImage {
        guard let image = UIImage(systemName: systemName, compatibleWith: nil) else {
            return UIImage()
        }
        return image
    }
}
