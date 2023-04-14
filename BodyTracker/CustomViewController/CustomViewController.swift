//
//  CustomViewController.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 09.11.2022.
//

import UIKit
import RealmSwift


class CustomViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var graphView: CustomGraphView!
    @IBOutlet var contentView: UIView!
    
    // MARK: - Private Properties
    private let storageManager = StorageManager.shared
    private var user: Results<User>!
    
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        let newUser = User()
        newUser.name = "Лидия"
        newUser.date = Date()

//        let parametersType = ParametersType()

        let value = Values()
        value.value = 52.0
        value.data = Date()
        
        let bodyparameters = BodyParameters()
//        bodyparameters.type.append(parametersType)
        bodyparameters.values.append(value)

        newUser.bodyParameters.append(bodyparameters)

        DispatchQueue.main.async {
            self.storageManager.save(user: [newUser])
        }

        user = storageManager.realm.objects(User.self)
        storageManager.makeDefaultParameters()
        
        view.backgroundColor = .white
//        tableView.backgroundColor = .gray
//        loadIndicator()
        
        tableView.register(UINib(nibName: String(describing: ParameterTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: ParameterTableViewCell.self))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = "Замеры"
    }
    
//    private func loadIndicator() {
//        bodyParametersType.forEach { typeOfIndex in
//            indicators[typeOfIndex] = []
//        }
//        indicatorStorage.loadIndicator().forEach { index in
//            indicators[index.typeOfIndex]?.append(index) }
//    }
//
    
}

    // MARK: - Table View Delegate
extension CustomViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        50
//    }
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        view.backgroundColor = .gray
//        let header = view as! UITableViewHeaderFooterView
//        header.textLabel?.textColor = .white
//    }
}

    // MARK: - Table View Data Source
extension CustomViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let typeOfParameter = bodyParameters[section]
//        let fff = typeOfParameter.type.
//        let title: String? = typeOfIndex.title.description
//        return title
        return "Замеры"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return storageManager.parameters.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ParameterTableViewCell.self)) as! ParameterTableViewCell
        let parameter = storageManager.parameters[indexPath.row]
        
//        let typeOfIndex = bodyParametersType[indexPath.section]
//        guard let currentIndicator = indicators[typeOfIndex]?[indexPath.row] else { return cell }
        cell.configure(for: ViewModel(imageURL: #imageLiteral(resourceName: "Default"), title: "\(parameter.type)", subtitle: "\(0.0)"))
        return cell
        
//        let typeOfIndex = bodyParameters[indexPath.row]
//        let currentType = typeOfIndex
//        guard let currentIndicator = bodyParameters[typeOfIndex]?[indexPath.row] else { return cell }
//        cell.configure(for: ViewModel(imageURL: "", title: "\(currentType.name)", subtitle: "\(currentType.value)"))
//        return cell
    }
}


