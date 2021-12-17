//
//  Type.swift
//  financeApp
//
//  Created by Riya Jain on 12/16/21.
//

import Foundation

struct TransactionType: Hashable, Codable  {
    var name: String
    var amt: Int
 
    public mutating func resetAmount () {
        amt = 0
    }
}
