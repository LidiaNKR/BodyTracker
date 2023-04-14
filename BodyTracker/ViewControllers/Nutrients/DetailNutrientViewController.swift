//
//  DetailNutrientViewController.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 07.04.2023.
//

import UIKit

class DetailNutrientViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var detailNutrientImage: UIImageView!
    @IBOutlet var detailNutrientName: UILabel!
    @IBOutlet var detailNutrientDescription: UILabel!
    
    // MARK: - Public Properties
    var nutrient: Nutrient!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        detailNutrientImage.image = UIImage(named: nutrient.name)
        detailNutrientImage.contentMode = .scaleAspectFill
        
        detailNutrientName.text = nutrient.name
        
        detailNutrientDescription.text = nutrient.description
    }
}
