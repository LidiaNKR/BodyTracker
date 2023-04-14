//
//  StorageManager.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 25.03.2023.
//

import RealmSwift

class StorageManager {
    
    // MARK: - Public Properties
    static let shared = StorageManager()
    let realm = try! Realm()
    lazy var parameters: Results<BodyParameters> = { realm.objects(BodyParameters.self) }()
    
    // MARK: - Initializers
    private init() {}
    
    // MARK: - Public Methods
    func save(user: [User]) {
        try! realm.write {
            realm.add(user)
        }
    }
    
    func makeDefaultParameters() {
        
        try! realm.write {
            
            let defaultParameters = ["Вес", "Грудь", "Талия", "Бедра", "Левое бедро", "Правое бедро"]
            
            for parameter in defaultParameters {
                let newParameter = BodyParameters()
                newParameter.type = parameter
                self.realm.add(newParameter)
            }
        }
        parameters = realm.objects(BodyParameters.self)
    }
}
//    private func write(_ completion: () -> Void) {
//        do {
//            try realm.write{
//                completion()
//            }
//        } catch let error {
//            print(error)
//        }
//    }
    


//

//


    
