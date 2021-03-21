//
//  Service.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import Foundation

class Service {
    
    static let shared: Service = Service()
    
    func getMovieDetail(movieId: String, completionHandler: @escaping (Results<MovieDetails>) -> ()) {
        NetworkManager.shared.request(APIDns.details(movieId: movieId), decodeToType: MovieDetails.self, completionHandler: completionHandler)
    }
    
    func getSimilarMovies(movieId: String, completionHandler: @escaping (Results<SimilarMovies>) -> ()) {
        NetworkManager.shared.request(APIDns.similars(movieId: movieId), decodeToType: SimilarMovies.self, completionHandler: completionHandler)
    }
}
