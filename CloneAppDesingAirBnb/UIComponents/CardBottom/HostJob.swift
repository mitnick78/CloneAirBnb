//
//  HostJob.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation
enum HostJob {
    case officer
    case consultant
    case entrepreneur
    case coach

    var title: String {
        switch self {
        case .officer:
            return "Officier"
        case .consultant:
            return "Consultant"
        case .entrepreneur:
            return "Entrepreneur"
        case .coach:
            return "Coach"
        }
    }
}
