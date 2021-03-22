//
//  MovieDetailsPresenter.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class MovieDetailsPresenter: MovieDetailsPresenterProtocol {
    
    weak var view: MovieDetailsViewProtocol!
    var router: MovieDetailsRouterProtocol!
    var interactor: MovieDetailsInteractorProtocol!
    
}
