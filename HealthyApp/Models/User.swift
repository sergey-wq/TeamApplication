//
//  User.swift
//  HealthyApp
//
//  Created by Daniil on 26.03.22.
//

import Foundation

struct User {
    
    let login: String
    let password: String
    let person: Person
}

struct Person {
    
    let name: String
    let surname: String
    let age: Int
    let height: Int
    let weight: Int
    let glucoseLevel: Int
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPersonData() -> User {
        User(
            login: "User",
            password: "password",
            person: Person(
                name: "Ivan",
                surname: "Ivanov",
                age: 21,
                height: 180,
                weight: 73,
                glucoseLevel: 7
            )
        )
    }
}

