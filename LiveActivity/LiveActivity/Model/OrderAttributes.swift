//
//  OrderAttributes.swift
//  LiveActivity
//
//  Created by admin1 on 10.12.22.
//

import SwiftUI

import ActivityKit

struct OrderAttributes: ActivityAttributes {
    struct ContentState: Codable,Hashable{
        var status: Status = .received
    }
    
    
    var orderNUmber: Int
    var orderItems: String
}


enum Status: String,CaseIterable,Codable,Equatable{
    case received = "asxsa"
    case progress = "f.asdasxas'
    case ready = "asdxas"
}
