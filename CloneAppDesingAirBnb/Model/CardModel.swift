//
//  CardModel.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation
struct CardModel: Hashable {
    var imageSliderModel: ImageSliderModel
    var bookCoverModel: BookCoverModel
    var cardBottomModel: CardBottomModel
}

extension CardModel {
    static let sample = CardModel(
        imageSliderModel: .sample,
        bookCoverModel: .sample,
        cardBottomModel: .sample
    )
    static let sampleOne = CardModel(
        imageSliderModel: .sampleOne,
        bookCoverModel: .sampleOne,
        cardBottomModel: .sampleOne
    )
}
