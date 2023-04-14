//
//  ParameterTableViewCell.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 09.11.2022.
//

import UIKit

struct ViewModel {
    var imageURL: UIImage
    var title: String
    var subtitle: String
}

class ParameterTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet var customImageView: UIImageView!
    
    @IBOutlet var nameIndexLabel: UILabel!
    @IBOutlet var indexLabel: UILabel!

    
    // MARK: - Public Methods
    func configure(for viewModel: ViewModel) {
        nameIndexLabel.text = viewModel.title
        indexLabel.text = viewModel.subtitle
    }
}

