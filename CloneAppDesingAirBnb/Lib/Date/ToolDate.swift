//
//  ToolDate.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation
func isSameMonth(firstDate: Date, secondDate: Date) -> Bool{
    return Calendar.current.isDate(firstDate, equalTo: secondDate, toGranularity: .month)
}


func formatDateDayOnly(date:Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd"
    let formattedDate = dateFormatter.string(from: date)
    return formattedDate
}

func formatDate(date: Date) -> String {
     let dateFormatter = DateFormatter()
     dateFormatter.dateFormat = "dd MMM"
     let formattedDate = dateFormatter.string(from: date)
     return formattedDate
}
