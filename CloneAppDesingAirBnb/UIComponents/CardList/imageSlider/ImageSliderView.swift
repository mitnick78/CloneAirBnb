//
//  ImageSliderView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 19/08/2023.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex: Int = 0
    private let model: ImageSliderModel
    
    init(model: ImageSliderModel) {
        self.model = model
    }
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(model.HouseingImageNames.indices, id: \.self) { index in
                Image(model.HouseingImageNames[index])
                    .resizable()
                    .clipped()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(Assets.Colors.imageSliderBackground)
        .overlay(alignment: .bottom) {
            SliderIndicatorView(pageIndex: currentIndex, pageCount: model.imageCount)
        }
        .cornerRadius(20)
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView(model: .sample)
            .frame(maxWidth: .infinity, maxHeight: 350)
            .padding(.horizontal)
    }
}
