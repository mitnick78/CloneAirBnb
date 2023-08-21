//
//  BookCoverModel.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation

struct BookCoverModel: Hashable {
    let ownerImageName: String
}

extension BookCoverModel {
    static let sample = BookCoverModel(ownerImageName: Assets.Images.owner)
    static let sampleOne = BookCoverModel(ownerImageName: Assets.Images.ownerOne)
}
