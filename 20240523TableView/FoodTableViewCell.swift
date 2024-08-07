//
//  FoodTableViewCell.swift
//  20240523TableView
//
//  Created by 이찬호 on 5/27/24.
//

import UIKit
import Kingfisher

class FoodTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var favoriteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureLayout()
    }
    
    
    func configureLayout() {
        titleLabel.font = .boldSystemFont(ofSize: 17)
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.textColor = .darkGray
        descriptionLabel.font = .boldSystemFont(ofSize: 20)
        descriptionLabel.textColor = .blue
        mainImageView.backgroundColor = .lightGray
    }
    
    func configureCell(_ data: Restaurant) {
        titleLabel.text = "\(data.name) | \(data.category)"
        subtitleLabel.text = data.address
        descriptionLabel.text = data.price.formatted() + "원"
        let url = URL(string: data.image)
        mainImageView.kf.setImage(with: url, placeholder: UIImage(systemName: "star"))
        mainImageView.contentMode = .scaleAspectFill
    }
    
}
