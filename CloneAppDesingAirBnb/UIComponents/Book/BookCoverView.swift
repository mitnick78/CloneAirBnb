//
//  BookCoverView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import SwiftUI

struct BookCoverView: View {
    
    let size: CGFloat
    let sizeRatio: CGFloat
    private var model: BookCoverModel
    
    init(model: BookCoverModel, size: CGFloat) {
        self.model = model
        self.size = size
        self.sizeRatio = 1.3
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: getRoundedCornerRight())
                .foregroundColor(Assets.Colors.bookCover)
                .offset(x: getOffset(), y: 0)
            Rectangle()
                .foregroundColor(Assets.Colors.bookCover)
                .roundedCorner(getRoundedCornerRight(), corners: [.bottomRight, .topRight])
                .roundedCorner(getRoundedCornerLeft(), corners: [.bottomLeft, .topLeft])
                .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 0)
                .overlay {
                    Image(model.ownerImageName)
                        .resizable()
                        .scaledToFill()
                        .clipShape(
                            Circle()
                        )
                        .padding(getImageCirclePadding())
                        .frame(width: size, height: size)
                }
                .rotation3DEffect(
                    Angle(degrees: Styles.rotationAngle), axis: (x: 0, y: 1, z: 0),
                    anchor: .leading
                )
        }
        .frame(
            width: size + getOffset(),
            height: getHeight()
        )
    }
    
    
    func getHeight() -> CGFloat {
        return size * sizeRatio
    }
    
    func getOffset() -> CGFloat {
        return size * 0.13
    }
    
    func getRoundedCornerRight() -> CGFloat {
        return size * 0.15
    }
    
    func getRoundedCornerLeft() -> CGFloat {
        return size * 0.1
    }
    
    func getImageCirclePadding() -> CGFloat {
        return size * 0.15
    }
}

private struct Styles {
    static let rotationAngle: CGFloat = -3
}

struct BookCoverView_Previews: PreviewProvider {
    static var previews: some View {
        BookCoverView(model: .sample, size: 100)
    }
}
