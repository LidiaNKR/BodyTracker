//
//  BodyIndicators.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 09.11.2022.
//

import RealmSwift

class User: Object {
    @Persisted var name = ""
    @Persisted var date = Date()
    @Persisted var bodyParameters = List<BodyParameters>()
}

class BodyParameters: Object {
//    @Persisted var type = List<ParametersType>()
    @Persisted var type = ""
    @Persisted var values = List<Values>()
}

//class ParametersType: Object {
//    @Persisted var name = ""
//}

class Values: Object {
    @Persisted var value: Double = 0.0
    @Persisted var data = Date()
}
