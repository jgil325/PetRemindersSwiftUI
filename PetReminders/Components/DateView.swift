//
//  DateView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/11/21.
//

import SwiftUI

struct DateView: View {
    var weekday: String
    var short: String
    var checkDay: String

    
    var body: some View {
        ZStack {
            Circle()
                .fill((weekday == checkDay) ? Color(#colorLiteral(red: 0.5568627715110779, green: 0.5921568870544434, blue: 0.9921568632125854, alpha: 1)) :
                    Color(#colorLiteral(red: 0.24705882370471954, green: 0.2549019753932953, blue: 0.30588236451148987, alpha: 1)))
                .frame(width: 40.7, height: 40.7)
            
            Text(short).font(.custom("HelveticaNeue Medium", size: 14))
                .foregroundColor((weekday == checkDay) ? Color(#colorLiteral(red: 0.24705882370471954, green: 0.2549019753932953, blue: 0.30588236451148987, alpha: 1)) :
                                    Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
            
        }
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
