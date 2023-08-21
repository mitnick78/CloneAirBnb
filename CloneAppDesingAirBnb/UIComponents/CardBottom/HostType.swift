//
//  HostType.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation
enum HostType {
    case individual
    case professional
    
    var description: String{
        switch self {
        case .individual:
            return "Particulier"
        case .professional:
            return "Profesionnel"
        }
    }
}


