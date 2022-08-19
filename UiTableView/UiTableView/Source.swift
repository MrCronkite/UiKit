//
//  Source.swift
//  UiTableView
//
//  Created by admin1 on 19.08.22.
//

import Foundation
import UIKit

struct Contact {
    let name: String
    let description: String
    let gender: Gender
    
}

enum Gender {
    case male
    case female
}

//struct ImageName {
//    static let person = "person"
//    static let fillPerson = "person.fill"
//}

struct Description {
    static let descriptionMale = "приятный молодой человек"
    static let descriptionFemale = "приятная молодая девушка"
}

struct Source {
    static func makeContacts() -> [Contact] {
        [
            .init(name: "Bob", description: Description.descriptionMale, gender: .male),
            .init(name: "Alex", description: Description.descriptionMale, gender: .male),
            .init(name: "Andrey", description: Description.descriptionMale, gender: .male),
            .init(name: "Brucli", description: Description.descriptionMale, gender: .male),
            .init(name: "Bramsi", description: Description.descriptionMale, gender: .male),
            .init(name: "Billi", description: Description.descriptionMale, gender: .male),
            
            .init(name: "Mari", description: Description.descriptionFemale, gender: .female),
            .init(name: "Olga", description: Description.descriptionFemale, gender: .female),
            .init(name: "Sveta", description: Description.descriptionFemale, gender: .female),
            .init(name: "Lera", description: Description.descriptionFemale, gender: .female),
            .init(name: "Nastia", description: Description.descriptionFemale, gender: .female),
            .init(name: "Violeta", description: Description.descriptionFemale, gender: .female),
            .init(name: "Katia", description: Description.descriptionFemale, gender: .female),
            
        ]
    }
    
    static func makeContactsWithGroup() -> [[Contact]] {
        let male = makeContacts().filter {$0.gender == .male}
        let female = makeContacts().filter {$0.gender == .female}
        return [male, female]
    }
}

