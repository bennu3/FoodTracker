//
//  RestaurantCell.swift
//  Final_Project
//
//  Created by Diego Garcia on 6/22/19.
//  Copyright © 2019 Diego Garcia. All rights reserved.
//

import UIKit

protocol RestaurantCellDelegate: class {
    func restaurantCell(_ restaurantCell: RestaurantCell, didTapLinkedInOptionForTeacher restaurant: Restaurant)
}

class RestaurantCell: UITableViewCell {

    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var locationImageView: UIImageView!
    @IBOutlet weak var restaurantLocationLabel: UILabel!
    weak var delegate: RestaurantCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    var restaurant: Restaurant! {
        didSet {
            restaurantNameLabel.text = "\(restaurant.name) - \(restaurant.tagline)"
            restaurantImageView.image = UIImage(named: restaurant.imageName)
            restaurantLocationLabel.text = "\(restaurant.location)"
            locationImageView.image = UIImage(named: "logo")
            restaurantImageView.layer.cornerRadius = 20

        }
    }
}
