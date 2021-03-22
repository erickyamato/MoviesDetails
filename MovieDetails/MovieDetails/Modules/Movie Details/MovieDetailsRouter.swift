//
//  MovieDetailsRouter.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class MovieDetailsRouter: MovieDetailsRouterProtocol, Storyboarded {
    
    static let storyboardName = "MovieDetails"
    
    weak var viewController: UIViewController!
    
    static func assembleModule() -> UIViewController {
        let view: MovieDetailsViewController = storyboard.instantiateViewController()
        let presenter = MovieDetailsPresenter()
        let router = MovieDetailsRouter()
        let localDataManager = MovieDetailsLocalDataManager()
        let remoteDataManager = MovieDetailsRemoteDataManager()
        let repository = MovieDetailsRepository(localDataManager: localDataManager, remoteDataManager: remoteDataManager)
        let interactor = MovieDetailsInteractor(repository: repository)
        
        view.presenter = presenter
        
        router.viewController = view
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        return view
    }

}
