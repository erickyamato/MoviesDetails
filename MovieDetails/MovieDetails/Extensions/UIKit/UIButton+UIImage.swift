//
//  UIButton+UIImage.swift
//  MovieDetails
//
//  Created by Erick Yamato on 22/03/21.
//  Copyright © 2021 Erick Yamato. All rights reserved.
//

import UIKit

extension UIButton {
    func addRightImage(image: UIImage, offset: CGFloat) {
        self.setImage(image, for: .normal)
        self.imageView?.translatesAutoresizingMaskIntoConstraints = false
        self.imageView?.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0).isActive = true
        self.imageView?.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -offset).isActive = true
        
        let imageWidth = imageView?.frame.width ?? 0.0
        titleEdgeInsets = UIEdgeInsets(top: titleEdgeInsets.top,
                                       left: titleEdgeInsets.left,
                                       bottom: titleEdgeInsets.bottom,
                                       right: offset + imageWidth + 10.0)
    }
}

