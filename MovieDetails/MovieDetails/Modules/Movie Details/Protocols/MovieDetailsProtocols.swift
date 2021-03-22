//
//  MovieDetailsProtocols.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 Erick Yamato. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Interactor
protocol MovieDetailsInteractorProtocol: class {
    
}

// MARK: - DataManager
protocol MovieDetailsLocalDataManagerProtocol: class {
    
}

protocol MovieDetailsRemoteDataManagerProtocol: class {
    
}

// MARK: - Repository
protocol MovieDetailsRepositoryProtocol {
    
}

// MARK: - Presenter
protocol MovieDetailsPresenterProtocol: class {
    
    var view: MovieDetailsViewProtocol! { get set }
    var router: MovieDetailsRouterProtocol! { get set }
    var interactor: MovieDetailsInteractorProtocol! { get set }
    
}

// MARK: - View
protocol MovieDetailsViewProtocol: class {
    
    var presenter: MovieDetailsPresenterProtocol! { get set }
    
}

// MARK: - Router
protocol MovieDetailsRouterProtocol: class {
    
    var viewController: UIViewController! { get set }
    
}


