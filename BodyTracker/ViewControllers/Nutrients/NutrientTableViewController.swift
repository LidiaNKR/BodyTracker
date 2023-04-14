//
//  NutrientTableViewController.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 06.04.2023.
//

import UIKit

class NutrientTableViewController: UITableViewController {

    // MARK: - Public Properties
    var nutrientList = Nutrient.getNutrientList()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = "Нутриенты"
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nutrientList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NutritionName", for: indexPath) as! NutrientCell
        
        let nutrient = nutrientList[indexPath.row]
        cell.configure(with: nutrient)

        return cell

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let nutrient = nutrientList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: nutrient)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailsNutrientVC = segue.destination as! DetailNutrientViewController
            detailsNutrientVC.nutrient = nutrientList[indexPath.row]
        }
    }
}

