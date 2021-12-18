//
//  Data.swift
//  financeApp
//
//  Created by Riya Jain on 12/13/21.
//

import Foundation

var balance: Int = 0

var amtSpent: Int = 0

var amtReceived: Int = 0
    
var transactions: [Transaction] = [
        Transaction(id: 0, description: "I got paid!", type: "Salary", amount: 500, details: "Two week salary for working part time at coffee shop"),
        Transaction(id: 1, description: "Went out, paid for the whole group", type: "Food", amount: -50, details: "Went to get Italian food; John, Bob, and Ana never paid me back ://"),
        Transaction(id: 2, description: "Monthly Rent", type: "Bills", amount: -150, details: "landlord is mad"),
        Transaction(id: 3, description: "Saving for costa rica", type: "Saving", amount: -20, details: "sldskf"),
        Transaction(id: 4, description: "Hehe more money", type: "Other", amount: 90, details: "sldskf"),
        Transaction(id: 5, description: "Chipotle", type: "Food", amount: -12, details: "sldskf"),
]

var billsTransaction = TransactionType(name: "Bills", amt: -150)
var foodTransaction = TransactionType(name: "Food", amt: -62)
var clothingTransaction = TransactionType(name: "Clothing", amt: 0)
var debtTransaction = TransactionType(name: "Debt", amt: 0)
var savingTransaction = TransactionType(name: "Saving", amt: -20)
var salaryTransaction = TransactionType(name: "Salary", amt: 500)
var otherTransaction = TransactionType(name: "Other", amt: 90)

var categories: [TransactionType] = [billsTransaction, foodTransaction, clothingTransaction, debtTransaction, savingTransaction, salaryTransaction, otherTransaction]

public func updateTotalBalance () -> String {
    balance = 0
    amtReceived = 0
    amtSpent = 0
    
    for transaction in transactions {
        balance += transaction.amount
        
        if transaction.amount > 0 {
            amtReceived += transaction.amount
        }
        else{
            amtSpent += transaction.amount
        }
    }
    print(balance)
    return "$\(balance)"
}

public func updateCategoriesBalance () -> [Int]{
    let numbers = [0, 1, 2, 3, 4, 5, 6]
    for i in numbers {
        categories[i].resetAmount()
    }
    
    for transaction in transactions {
        let type = transaction.type.lowercased()
        
        switch type{
        case "bills":
            categories[0].amt += transaction.amount
        case "food":
            categories[1].amt += transaction.amount
        case "clothing":
            categories[2].amt += transaction.amount
        case "debt":
            categories[3].amt += transaction.amount
        case "saving":
            categories[4].amt += transaction.amount
        case "salary":
            categories[5].amt += transaction.amount
        case "other":
            categories[6].amt += transaction.amount
        default:
            categories[6].amt += transaction.amount
        }
        
    }
    
    return [categories[0].amt,categories[1].amt, categories[2].amt, categories[3].amt, categories[4].amt, categories[5].amt, categories[6].amt]
}







