//
//  UIStoryboard+Instantiate.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 18/03/21.
//

import UIKit

extension UIStoryboard {
    
    convenience init(name: String) {
        self.init(name: name, bundle: nil)
    }
    
    func instantiateViewController<T: UIViewController>() -> T {
        let identifier = String(describing: T.self)
        guard let viewController: T = instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Failed to instantiate ViewController with identifier '\(identifier)'")
        }
        return viewController
    }
    
}
