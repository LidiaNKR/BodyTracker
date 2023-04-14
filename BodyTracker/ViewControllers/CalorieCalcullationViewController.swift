//
//  CalorieCalcullationViewController.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 09.11.2022.
//

import Foundation
import UIKit


class CalorieCalcullationViewController: UIViewController {
    
    // MARK: - Life Cycles Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.title = "Расчет ккал"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
