//
//  UIExtension.swift
//  CarrotMarket
//
//  Created by 임재현 on 4/10/25.
//

import UIKit

// MARK: - 커스텀 폰트
enum FontName: String {
    case pretendardBold = "Pretendard-Bold"
    case pretendardSemiBold = "Pretendard-SemiBold"
    case pretendardMedium = "Pretendard-Medium"
    case pretendardRegular = "Pretendard-Regular"
    case pretendardExtraBold = "Pretendard-ExtraBold"
}

extension UIFont {
    static func font(_ style:FontName, ofSize size: CGFloat) -> UIFont {
        guard let customFont = UIFont(name: style.rawValue, size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return customFont
    }
    
    
    /// pretendardSemiBold 18 - nonobjc: h1이라는 이름이 Objective-C 런타임에서 이미 존재하거나 충돌할 가능성이 있어서 이를 피하려는 것
    @nonobjc class var h1: UIFont {
        return UIFont.font(.pretendardSemiBold, ofSize: 18)
    }
    
    ///pretendardExtraBold 30
    @nonobjc class var h2: UIFont {
        return UIFont.font(.pretendardExtraBold, ofSize: 30)
    }
}
