//
//  NickNameResponseModel.swift
//  Week4
//
//  Created by 임재현 on 5/3/25.
//

import Foundation

struct NickNameListResponseWrapper: Codable {
    let data: Nickname
}

struct Nickname: Codable {
    let nicknameList: [String]
}
