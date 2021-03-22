//
//  MovieDetailsInteractor.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 Erick Yamato. All rights reserved.
//

import Foundation

final class MovieDetailsInteractor: MovieDetailsInteractorProtocol {
    
    private let repository: MovieDetailsRepositoryProtocol
    
    init(repository: MovieDetailsRepositoryProtocol) {
        self.repository = repository
    }
    
    func getMovieDetail(movieId: String, completionHandler: @escaping (Results<MovieDetails>) -> ()) {
        //
    }
    
    func getSimilarMovies(movieId: String, completionHandler: @escaping (Results<SimilarMovies>) -> ()) {
        //
    }
}
