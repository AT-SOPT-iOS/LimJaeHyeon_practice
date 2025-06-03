//
//  RegisterRequestBody.swift
//  Week4
//
//  Created by 임재현 on 5/3/25.
//

import Foundation

struct RegisterRequestBody: Codable {
    let loginId: String
    let password: String
    let nickname: String
}

struct RegisterResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: RegisterResponseBody
}

struct RegisterResponseBody: Codable {
    let userId: Int
    let nickname: String
}
