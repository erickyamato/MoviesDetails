//
//  Style.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 18/03/21.
//

import Foundation
import UIKit

struct Style {
    
    static func apply(onTitleLabel label: UILabel) {
        label.textColor = .white
        label.font      = .openSans(style: .bold, size: 17)
    }
    
    static func apply(onNormalLabel label: UILabel) {
        label.textColor = .white
        label.font = .openSans(style: .regular, size: 13)
    }
    
    static func apply(onInfoLabel label: UILabel) {
        label.textColor = .white
        label.font = .openSans(style: .light, size: 11)
    }
    
}
