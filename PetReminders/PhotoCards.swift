//
//  PhotoCards.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/11/21.
//

import SwiftUI

struct PhotoCards: View {
    var image: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct PhotoCards_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCards(image: "luna1")
    }
}
