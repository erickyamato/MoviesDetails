//
//  InfoCell.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import UIKit

final class InfoCell: UITableViewCell, NibReusable {

    @IBOutlet private weak var movieImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyStyle()
    }

    private func applyStyle() {
        
    }
    
}
