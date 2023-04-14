//
//  CustomImageView.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 09.11.2022.
//

import UIKit


class CustomGraphView: UIView {

    // MARK: - IBOutlets
    @IBOutlet var contentView: UIView!
    @IBOutlet var graphView: UIView!

    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupContentView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupContentView()
    }
    
    // MARK: - Life Cycles Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 20
    }
    
    // MARK: - Private Methods
    private func setupContentView() {
        Bundle.main.loadNibNamed(String(describing: CustomGraphView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}

