//
//  APIDns.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import Foundation
import Alamofire

enum APIDns: URLRequestConvertible {
    
    private enum Constants {
        static let kBaseURL = "https://api.themoviedb.org/3/movie/"
        static let kImageURL = "https://image.tmdb.org/t/p/w500/"
        static let kAPIKey = "7080c2bb2a9dab1527a0f33b38f3e648"
        static let kDetailString = "\("?api_key=")\(Constants.kAPIKey)\("&language=pt-BR")"
        static let kSimilarPath = "/similar"
    }
    
    case details(movieId: String)
    case similars(movieId: String)
    
    var method: HTTPMethod {
        switch self {
            case .details:
                return .get
                
            case .similars:
                return .get
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
            case .details:
                return nil
                
            case .similars:
                return nil
        }
    }
    
    var url: URL {
        switch self {
            case .details(let moveId):
                let queryString = Constants.kBaseURL + moveId + Constants.kDetailString
                let url = URL(string: queryString)!
                return url
                
            case .similars(let movieId):
                let queryString = Constants.kBaseURL + movieId + Constants.kSimilarPath + Constants.kDetailString
                let url = URL(string: queryString)!
                return url
        }
    }
    
    var encoding: ParameterEncoding {
        JSONEncoding.default
    }
    
    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        return try encoding.encode(urlRequest, with: parameters)
    }
    
}
