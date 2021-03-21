//
//  Storyboarded.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 18/03/21.
//

import Foundation
import UIKit

protocol Storyboarded {
    
    static var storyboardName: String { get }
    static var storyboard: UIStoryboard { get }
    
}

extension Storyboarded {
    
    static var storyboard: UIStoryboard {
        UIStoryboard(name: storyboardName, bundle: nil)
    }
    
}
