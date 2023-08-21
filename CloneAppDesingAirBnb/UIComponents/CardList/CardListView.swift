//
//  CardListView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import SwiftUI

struct CardListView: View {
    var models: [CardModel]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(models.indices, id: \.self) { index in
                    NavigationLink(value: Route.housingDetail(models[index])) {
                        CardView(model: models[index])
                            .padding(.horizontal, 10)
                    }
                    .buttonStyle(EmptyButtonStyle())
                }
            }
        }
        .navigationDestination(for: Route.self) { route in
            switch route {
            case .housingDetail(_):
                HousingDetailView()
            }
        }
    }
    
}

struct EmptyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}


struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(models: [
            .sample,
            .sample,
            .sample,
            .sample,
            .sample
        ])
    }
}
