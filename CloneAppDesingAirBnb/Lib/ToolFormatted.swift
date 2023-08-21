//
//  ToolFormatted.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//


import Foundation

func formaRating(_ rating: Double)-> String {
    let value = NSNumber(value: rating)
    let formatter = NumberFormatter()
    
    formatter.numberStyle = .decimal
    formatter.maximumFractionDigits = 2
    formatter.decimalSeparator = ","
    formatter.groupingSeparator = ""
    
    return formatter.string(from: value) ?? String(format: "%.2f", rating)
}
