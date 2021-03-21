//
//  Fonts.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 18/03/21.
//

import Foundation
import UIKit

extension UIFont {
    
    enum Style: String {
        case light = "Light"
        case lightItalic = "LightItalic"
        case regular = "Regular"
        case italic = "Italic"
        case semiBold = "Semibold"
        case semiBoldItalic = "SemiboldItalic"
        case bold = "Bold"
        case boldItalic = "BoldItalic"
        case extraBold = "ExtraBold"
        case medium = "Medium"
    }
    
    static func openSansFontName(style: Style) -> String {
        return "OpenSans-\(style.rawValue)"
    }
    
    static func openSans(style: Style, size: CGFloat) -> UIFont {
        let fontName = openSansFontName(style: style)
        return UIFont(name: fontName, size: size) ?? .systemFont(ofSize: size)
    }
    
}
