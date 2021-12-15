//
//  Data.swift
//  financeApp
//
//  Created by Riya Jain on 12/13/21.
//

import Foundation

var transactions: [Transaction] = [
    Transaction(id: 0, description: "I got paid!", type: "Income", amount: 500, details: "Two week salary for working part time at coffee shop"),
    Transaction(id: 1, description: "Went out, paid for the whole group", type: "Food", amount: -50, details: "Went to get Italian food; John, Bob, and Ana never paid me back ://"),
    Transaction(id: 2, description: "Monthly Rent", type: "Rent", amount: -150, details: "landlord is mad"),
    Transaction(id: 3, description: "Saving for costa rica", type: "Savings", amount: -20, details: "sldskf"),
    Transaction(id: 4, description: "Hehe more money", type: "Income", amount: 90, details: "sldskf"),
    Transaction(id: 5, description: "Chipotle", type: "Food", amount: -12, details: "sldskf"),
]
