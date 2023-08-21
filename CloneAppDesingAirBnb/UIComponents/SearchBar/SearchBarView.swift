//
//  SearchBarView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var textInput: String
    
    init(textInput: Binding<String>) {
        self._textInput = textInput
    }
    
    var body: some View {
        GeometryReader { geometry in
            let cornerRadius = geometry.size.width / 2
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(Styles.shadowOpacity), radius: Styles.shadowRadius, x: 0, y: 0)
                    .overlay{
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(.gray.opacity(Styles.borderOpactity), lineWidth: Styles.borderWidth)
                    }
                    
                HStack{
                    Image(Assets.Images.search)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Styles.imageSize, height: Styles.imageSize)
                        .padding(.horizontal)
                    TextField(text: $textInput){
                        Text("Where are you going")
                            .font(.custom(Assets.Fonts.montserratSemiBold, size: Styles.fontSize))
                            .multilineTextAlignment(.center)
                            .lineLimit(1)
                    }
                    .padding(.trailing)
                }
                
            }
        }.frame(height: 50)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(textInput: .constant(""))
            .padding(.horizontal)
    }
}

private enum Styles {
    static let imageSize: CGFloat = 20
    static let fontSize: CGFloat = 14
    static let shadowOpacity: CGFloat = 0.10
    static let shadowRadius: CGFloat = 15
    static let borderOpactity: CGFloat = 0.15
    static let borderWidth: CGFloat = 1
}
