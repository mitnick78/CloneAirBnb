//
//  CardBottomModel.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation
struct CardBottomModel: Hashable {
    let title: String
    let ownerName: String
    let ownerJob: HostJob
    let startDate: Date
    let endDate: Date
    let hostType: HostType
    let price: Int
    let rating: Double
}

extension CardBottomModel {
    static let sample = CardBottomModel(
        title: "Bearsden, Royaume-Uni",
        ownerName: "Clara",
        ownerJob: .coach,
        startDate: Date(),
        endDate: Date().addingTimeInterval(3600 * 60 * 24),
        hostType: .professional,
        price: 34,
        rating: 4.65
    )

    static let sampleOne = CardBottomModel(
        title: "Logement, Atlantic Beach",
        ownerName: "Jon-Marc",
        ownerJob: .entrepreneur,
        startDate: Date(),
        endDate: Date().addingTimeInterval(3600 * 60 * 24),
        hostType: .individual,
        price: 400,
        rating: 4.99
    )
}
