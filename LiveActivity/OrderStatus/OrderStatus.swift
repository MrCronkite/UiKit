//
//  OrderStatus.swift
//  OrderStatus
//
//  Created by admin1 on 10.12.22.
//

import WidgetKit
import SwiftUI
import Intents

@main
struct OrderStatus: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: OrderAttributes.self) { context in
            
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(Color("Green").gradient)
            }
        } dynamicIsland: <#(ActivityViewContext<OrderAttributes>) -> DynamicIsland#>
    }
}
