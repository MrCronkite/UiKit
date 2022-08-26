//
//  Source.swift
//  NavigationController
//
//  Created by admin1 on 26.08.22.
//

import Foundation


struct Contact {
    let name: String
    
}


struct Source {
    static func makeContact() -> [Contact] {
        [
            .init(name: "vlad"),
            .init(name: "vlad"),
            .init(name: "vlad"),
            .init(name: "vlad"),
            .init(name: "vlad"),
            .init(name: "vlad"),
            .init(name: "vlad"),
            .init(name: "vlad")
        ]
    }
}
