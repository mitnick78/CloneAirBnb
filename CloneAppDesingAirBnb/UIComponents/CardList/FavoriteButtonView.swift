//
//  FavoriteButtonView.swift
//  CloneAppDesingAirBnb
//
//  Created by Christophe on 19/08/2023.
//

import SwiftUI

struct FavoriteButtonView: View {
    @State var enabled: Bool = false
    let action: (() -> Void)?
    
    init(action: (()->Void)? = nil) {
        self.action = action
    }
    
    var body: some View {
        Button {
            action?()
            enabled = !enabled
        } label: {
            if(enabled){
                Image(Assets.Images.favoriteButtonEnabled)
                    .resizable()
            } else {
                Image(Assets.Images.favoriteButtonDisabled)
                    .resizable()
            }
        }
    }
}

struct FavoriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonView()
            .frame(width: 50, height: 50)
            .background(.gray)
    }
}
