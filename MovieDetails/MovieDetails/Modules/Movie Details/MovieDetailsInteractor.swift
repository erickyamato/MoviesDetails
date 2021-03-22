//
//  MovieDetailsInteractor.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

final class MovieDetailsInteractor: MovieDetailsInteractorProtocol {
    
    private let repository: MovieDetailsRepositoryProtocol
    
    init(repository: MovieDetailsRepositoryProtocol) {
        self.repository = repository
    }
    
}
