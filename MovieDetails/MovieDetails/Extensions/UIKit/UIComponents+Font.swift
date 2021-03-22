//
//  UIComponents+Font.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import Foundation
import UIKit

protocol FontStyle {
    
    func applyOnText(style: UIFont.Style, size: CGFloat, color: UIColor, textAlignment: NSTextAlignment)
    
}

protocol FontStyleState {
    
    func applyOnText(style: UIFont.Style, size: CGFloat, color: UIColor, forState state: UIControl.State)
    
}

extension UILabel: FontStyle {
    
    func applyOnText(style: UIFont.Style, size: CGFloat, color: UIColor, textAlignment: NSTextAlignment = .left) {
        font = UIFont.openSans(style: style, size: size)
        textColor = color
        self.textAlignment = textAlignment
    }
    
}

extension UITextField: FontStyle {
    
    func applyOnText(style: UIFont.Style, size: CGFloat, color: UIColor, textAlignment: NSTextAlignment = .left) {
        font = UIFont.openSans(style: style, size: size)
        textColor = color
        self.textAlignment = textAlignment
    }
    
}

extension UIButton: FontStyleState {
    
    func applyOnText(style: UIFont.Style, size: CGFloat, color: UIColor, forState state: UIControl.State) {
        titleLabel?.font = UIFont.openSans(style: style, size: size)
        setTitleColor(color, for: state)
    }
    
}

