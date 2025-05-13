//
//  GetInfoService.swift
//  Week4
//
//  Created by 임재현 on 5/3/25.
//

import Foundation

final class GetInfoService {
    static let shared = GetInfoService()
    private init() {}
    
    func makeRequest(keyword: String?, userId:Int) -> URLRequest? {
        var urlString = "http://api.atsopt-seminar4.site/api/v1/users"
        
        if let keyword = keyword, !keyword.isEmpty {
            if let encodeKeyword = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
                urlString += "?keyword=\(encodeKeyword)"
            }
        }
        
        guard let url = URL(string: urlString) else {
            return nil
            
        }
        
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(String(userId), forHTTPHeaderField: "userId")
        return request
    }
    
    
    func fetchNicknameList(keyword:String?,userId:Int) async throws -> [String] {
        guard let request = makeRequest(keyword: keyword, userId: userId) else {
            throw NetworkError.requestEncodingError
        }
        
        let (data,response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.responseError
        }
        do {
            let decoded = try JSONDecoder().decode(NickNameListResponseWrapper.self, from: data)
            return decoded.data.nicknameList
        } catch {
            print("디코딩 실패\(error)")
            throw NetworkError.responseDecodingError
        }
    }
    
    
    
    
    
    
}
