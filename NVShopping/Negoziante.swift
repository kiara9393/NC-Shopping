//
//  Negoziante.swift
//  NVShopping
//
//  Created by Chiara Amato on 13/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class Negoziante {
    
    var allJeans : [Jeans] = []
     init() {
        let jeans1 = Jeans.init(name: "Disel", code: "001", price: 110, sale: 10)
        let jeans2 = Jeans.init(name: "Levis", code: "002", price: 90, sale: 15)
        let jeans3 = Jeans.init(name: "Gas", code: "003", price: 80, sale: nil)
        self.allJeans = [jeans1,jeans2,jeans3]
    }
}
