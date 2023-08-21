//
//  SliderIndicatorView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 19/08/2023.
//

import SwiftUI

struct SliderIndicatorView: View {
    
    let pageIndex: Int
    let pageCount: Int
    
    var body: some View {
        HStack{
            ForEach(0..<pageCount, id:\.self){ index in
                Capsule()
                    .fill(pageIndex == index ? .white: .gray.opacity(0.2))
                    .frame(width: Styles.indicatorSize, height: Styles.indicatorSize)
                    .animation(.easeOut, value: pageIndex)
                    .background(
                        .regularMaterial,
                        in: Circle()
                    )
            }
        }.padding(.bottom)
    }
}

struct SliderIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderIndicatorView(pageIndex: 0, pageCount: 3)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray)
    }
}

private struct Styles {
    static let indicatorSize: CGFloat = 8
}
