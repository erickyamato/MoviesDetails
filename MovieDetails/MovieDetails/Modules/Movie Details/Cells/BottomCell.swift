//
//  BottomCell.swift
//  MovieDetails
//
//  Created by Erick Mitsugui Yamato on 21/03/21.
//

import UIKit

final class BottomCell: UITableViewCell, NibReusable {
    
    private enum Contants {
        static let kLike = "Curtir"
        static let kAddToMyList = "Adicionar às Minhas Listas"
    }

    @IBOutlet private weak var likeButton: UIButton!
    @IBOutlet private weak var addToMyListButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyLanguage()
        applyStyle()
    }
    
    private func applyLanguage() {
        likeButton.setTitle(Contants.kLike, for: .normal)
        addToMyListButton.setTitle(Contants.kAddToMyList, for: .normal)
    }

    private func applyStyle() {
        likeButton.applyOnText(style: .regular,
                               size: 13,
                               color: .red,
                               forState: .normal)
        addToMyListButton.applyOnText(style: .regular,
                                      size: 13,
                                      color: .red,
                                      forState: .normal)
    }
}
