//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Nam Luong on 22/08/2023.
//

import Foundation

struct Transaction: Identifiable, Decodable{
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date{
        date.dateParsed()
    }
    
    var signedAmount: Double{
        return type == TransactionType.credit.rawValue ? amount :-amount
    }
}

enum TransactionType: String{
    case devit = "debit"
    case credit = "credit"
}
