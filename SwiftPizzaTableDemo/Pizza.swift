//
//  Pizza.swift
//  SwiftPizzaTableDemo
//
//  Created by Tyler Crawford on 10/26/15.
//  Copyright © 2015 Tyler Crawford. All rights reserved.
//

import UIKit

class Pizza: NSObject {
    var pizzaPricePerInSq = [
        "Cheese": 0.03,
        "Sausage": 0.06,
        "Pepperoni": 0.05,
        "Veggie": 0.04
    ]
    
    let pi = 3.1415926
    var diameter = 0.0
    var pizzaType = "Cheese"
    
    func pizzaArea() -> Double {
        return radius * radius * pi
    }
    
    func unitPrice() -> Double {
        if let unitPrice = pizzaPricePerInSq[pizzaType] {
            return unitPrice
        } else {
            return 0.0
        }
    }
    
    func pizzaPrice() -> Double {
        return pizzaArea() * unitPrice()
    }
    
    var radius : Double {
        get {
            return diameter/2.0
        }
    }
    
    var typeList : [String] {
        get {
            return Array(pizzaPricePerInSq.keys)
        }
    }

}
