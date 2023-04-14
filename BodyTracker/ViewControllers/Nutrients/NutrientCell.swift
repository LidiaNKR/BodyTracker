//
//  NutrientCell.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 07.04.2023.
//

import UIKit

class NutrientCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet var customNutrientImage: UIImageView!
    @IBOutlet var customNutrientLabel: UILabel!
    
    // MARK: - Public Methods
    func configure(with nutrient: Nutrient) {
        customNutrientImage.image = UIImage(named: nutrient.name)
        customNutrientImage.alpha = 0.4
        customNutrientImage.contentMode = .scaleAspectFill
        
        customNutrientLabel.text = nutrient.name
    }
}
