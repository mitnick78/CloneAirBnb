//
//  CardBottomView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import SwiftUI

struct CardBottomView: View {
    let model: CardBottomModel
    
    init(model: CardBottomModel) {
        self.model = model
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Styles.textSpacing){
            HStack{
                Text(model.title)
                    .font(.custom(Assets.Fonts.montserratSemiBold, size: Styles.textSize))
                Spacer()
                Image(Assets.Images.star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: Styles.textSize, height: Styles.textSize)
                Text(formaRating(model.rating))
                    .font(.custom(Assets.Fonts.montserratRegular, size: Styles.textSize))
            }
            Group {
                Text("Séjour chez \(model.ownerName) ; \(model.ownerJob.title)")
                Text("\(createDateLabel()) · \(model.hostType.description)")
            }
            .font(.custom(Assets.Fonts.montserratRegular, size: Styles.textSize))
            .foregroundColor(.gray)
            
            HStack{
                Text("\(model.price) €")
                    .font(.custom(Assets.Fonts.montserratSemiBold, size: Styles.textSize))
                Text("par nuit")
                    .font(.custom(Assets.Fonts.montserratRegular, size: Styles.textSize))
            }.padding(.top, Styles.paddingTop)
        }
    }
    func createDateLabel() -> String {
        if isSameMonth(firstDate: model.startDate, secondDate: model.endDate) {
            return "\(formatDateDayOnly(date: model.startDate))-\(formatDate(date: model.endDate))"
        } else {
            return "\(formatDate(date: model.startDate)) - \(formatDate(date: model.endDate))"
        }
    }
}

struct CardBottomView_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomView(model: .sample)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

private struct Styles {
    static let textSize: CGFloat = 14
    static let textSpacing: CGFloat = 4
    static let paddingTop: CGFloat = 5
}
