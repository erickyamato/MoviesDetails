//
//  Network.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import Foundation
import Alamofire

enum Results<T> {
    case success (T)
    case failure(Error)
}

class NetworkManager {
    
    static let shared: NetworkManager = NetworkManager()
    
    func request<T: Codable>(_ request: URLRequestConvertible, decodeToType type: T.Type, completionHandler: @escaping (Results<T>) -> ()) {
        AF.request(request).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decoded = try JSONDecoder().decode(T.self, from: data)
                    completionHandler(.success(decoded))
                } catch {
                    completionHandler(.failure(error))
                }
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
    
}
