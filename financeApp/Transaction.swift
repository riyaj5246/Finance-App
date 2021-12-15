//
//  Transaction.swift
//  financeApp
//
//  Created by Riya Jain on 12/13/21.
//

import Foundation

struct Transaction: Hashable, Codable, Identifiable {
    var id: Int
    var description: String
    var type: String
    var amount: Int
    var details: String
}
