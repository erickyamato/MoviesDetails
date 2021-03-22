//
//  MovieDetailsRepository.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 Erick Yamato. All rights reserved.
//

import Foundation

final class MovieDetailsRepository: MovieDetailsRepositoryProtocol {
    
    private let localDataManager: MovieDetailsLocalDataManagerProtocol
    private let remoteDataManager: MovieDetailsRemoteDataManagerProtocol
    
    init(localDataManager: MovieDetailsLocalDataManagerProtocol,
         remoteDataManager: MovieDetailsRemoteDataManagerProtocol) {
        self.localDataManager = localDataManager
        self.remoteDataManager = remoteDataManager
    }
    
}
