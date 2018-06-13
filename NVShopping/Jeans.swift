//
//  Jeans.swift
//  NVShopping
//
//  Created by Chiara Amato on 13/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class Jeans {
    
    var name: String
    var code: String
    var price: Double
    var sale: Double?
    
    init(name: String, code: String, price: Double, sale: Double?) {
        self.name = name
        self.code = code
        self.price = price
        self.sale = sale
        
        if let mySale = sale {
            self.sale = mySale
        }
    }
    
}
