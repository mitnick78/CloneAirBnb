//
//  ImageSliderModel.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import Foundation

struct ImageSliderModel: Hashable {
    let HouseingImageNames: [String]
    
    var imageCount: Int {
        return HouseingImageNames.count
    }
}

extension ImageSliderModel {
    static let sample = ImageSliderModel(HouseingImageNames: [
        Assets.Images.apartmentOne,
        Assets.Images.apartmentTwo,
        Assets.Images.apartmentThree,
        Assets.Images.apartmentFour,
        Assets.Images.apartmentFive,
    ])
    
    
    static let sampleOne = ImageSliderModel(HouseingImageNames: [
        Assets.Images.apartmentFive,
        Assets.Images.apartmentSix,
        Assets.Images.apartmentSeven,
        Assets.Images.apartmentEight
    ])
}
