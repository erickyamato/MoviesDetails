//
//  MovieDetailsPresenter.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 Erick Yamato. All rights reserved.
//

import UIKit

final class MovieDetailsPresenter: MovieDetailsPresenterProtocol {
    
    weak var view: MovieDetailsViewProtocol!
    var router: MovieDetailsRouterProtocol!
    var interactor: MovieDetailsInteractorProtocol!
    
}
