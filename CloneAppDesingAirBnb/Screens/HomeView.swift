//
//  HomeView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 20/08/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var searchTextInput: String = ""
    private var models: [CardModel]
    
    init(models: [CardModel]) {
        self.models = models
        //self.filteredModels = []
    }
    
    var body: some View {
        NavigationStack{
            VStack(spacing: Styles.spacing){
                SearchBarView(textInput: $searchTextInput)
                    .padding(.horizontal)
                CardListView(models: getFilteredModels())
            }
        }
        
    }
    
    private func getFilteredModels() -> [CardModel] {
        guard searchTextInput.isEmpty == false else { return models }
        let filteredModels = models.filter { model in
            return model.cardBottomModel.title.contains(searchTextInput)
        }
        return filteredModels
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(models: [.sample, .sample, .sample])
    }
}

private enum Styles {
    static let spacing: CGFloat = 20
}
