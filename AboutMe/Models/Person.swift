//
//  Person.swift
//  AboutMe
//
//  Created by Karpinets Alexander on 05.09.2022.
//

struct Person {
    let name: String
    let surname: String
    let password: String
    var fullName: String {
        "\(name) \(surname)"
    }
}
