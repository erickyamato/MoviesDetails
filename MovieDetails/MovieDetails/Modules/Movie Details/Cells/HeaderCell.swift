//
//  HeaderCell.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import UIKit

class HeaderCell: UITableViewCell, NibReusable {

    private enum Constants {
        static let kLiked = "Curtidas"
        static let kViewed = "Visualizados"
    }
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var likeButton: UIButton!
    @IBOutlet private weak var likedLabel: UILabel!
    @IBOutlet private weak var viewsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyStyle()
    }
    
    func setup(withModels movieDetails: MovieDetails, similarMovies: SimilarMoviesResult) {
        titleLabel.text = movieDetails.title
        likedLabel.addLeading(image: UIImage(named: "heart.fill") ?? UIImage(), text: "\(movieDetails.voteCount) \(Constants.kLiked)")
        viewsLabel.addLeading(image: UIImage(named: "eye") ?? UIImage(), text: "\(similarMovies.popularity)")
    }

    private func applyStyle() {
        titleLabel.applyOnText(style: .bold,
                               size: 17,
                               color: .red)
        
        likeButton.setTitleColor(.red, for: .normal)
        
        likedLabel.applyOnText(style: .regular,
                               size: 13,
                               color: .white)
        viewsLabel.applyOnText(style: .regular,
                               size: 13,
                               color: .white)
    }
}
