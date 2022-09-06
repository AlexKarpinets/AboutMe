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
    var image: String
    var bioInfo: String
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getPerson() -> Person {
        Person(name: "Alexander",
               surname: "Karpinets",
               password: "qaz",
               image: "Im",
               bioInfo: "Hello, my name is Alexander. I'm IOS developer. In 2021, I completed the SwiftBook courses. I am currently looking for a job.")
    }
    }

