//
//  CardView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import SwiftUI

struct CardView: View {
    private var model: CardModel
    
    init(model: CardModel) {
        self.model = model
    }
    
    var body: some View {
        VStack{
            ImageSliderView(model: model.imageSliderModel)
                .frame(height: Styles.imageSliderHeight)
                .padding(.horizontal, Styles.paddingHorizontal)
                .overlay{
                    GeometryReader{ geometry in
                        FavoriteButtonView()
                            .frame(width: Styles.imageFavoriteSize, height:     Styles.imageFavoriteSize)
                            .position(x: geometry.size.width, y: 0)
                            .offset(x: Styles.favoriteButtonOffsetX, y: Styles.favoriteButtonOffsetY)
                        
                        
                    }
                }
                .overlay{
                    GeometryReader{ geometry in
                        BookCoverView(model: model.bookCoverModel, size: Styles.bookSize)
                            .position(x: Styles.bookSize, y: geometry.size.height - Styles.bookSize)
                    }
                }
            CardBottomView(model: model.cardBottomModel)
                .padding(.horizontal, Styles.paddingHorizontal)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(model: .sample)
    }
}


private struct Styles {
    static let paddingHorizontal: CGFloat = 20
    static let imageSliderHeight: CGFloat = 320
    static let imageFavoriteSize: CGFloat = 25
    static let favoriteButtonOffsetX: CGFloat = -50
    static let favoriteButtonOffsetY: CGFloat = 30
    static let bookSize: CGFloat = 65
}
