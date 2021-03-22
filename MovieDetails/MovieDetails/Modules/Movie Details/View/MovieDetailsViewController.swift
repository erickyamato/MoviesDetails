//
//  MovieDetailsViewController.swift
//  MovieDetails
//
//  Created on 21/03/21.
//  Copyright © 2021 Erick Yamato. All rights reserved.
//

import UIKit

final class MovieDetailsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: MovieDetailsPresenterProtocol!
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()

        applyLanguage()
        applyStyle()
        setupTableView()
    }
    
    // MARK: - Setup Methods
    
    private func applyLanguage() {
        
    }
    
    private func applyStyle() {
        
    }
    
    private func setupTableView() {
        
    }
    
}

// MARK: - MovieDetailsViewProtocol
extension MovieDetailsViewController: MovieDetailsViewProtocol {
    
}
