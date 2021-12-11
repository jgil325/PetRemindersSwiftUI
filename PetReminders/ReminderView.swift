//
//  ReminderView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/10/21.
//

import UserNotifications
import SwiftUI

struct ReminderView: View {
    @State private var newReminder = Date()
    
    var body: some View {
        VStack {
            //What time would you like t...
            Text("What time is the reminder for?")
                .font(.custom("HelveticaNeue Bold", size: 24))
                .foregroundColor(Color(#colorLiteral(red: 0.25, green: 0.25, blue: 0.31, alpha: 1)))
            
            //Any time you can choose bu...
            Text("Make sure it is set correctly!")
                .font(.custom("HelveticaNeue Light", size: 16))
                .foregroundColor(Color(#colorLiteral(red: 0.63, green: 0.64, blue: 0.7, alpha: 1)))
            
//            DatePicker("Please enter a date", selection: $newReminder, in: Date.init()...)
            VStack {
                DatePicker("", selection: $newReminder, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .datePickerStyle(WheelDatePickerStyle())
            }
            
            Text("What days do you want this reminder to be for?")
                .font(.custom("HelveticaNeue Bold", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0.25, green: 0.25, blue: 0.31, alpha: 1)))
            
            HStack {
                DaySelect(day: "SU")
                DaySelect(day: "M")
                DaySelect(day: "T")
                DaySelect(day: "W")
                DaySelect(day: "TH")
                DaySelect(day: "F")
                DaySelect(day: "S")
            }
            .padding()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    //Rectangle 210
                        RoundedRectangle(cornerRadius: 38)
                        .fill(Color(#colorLiteral(red: 0.5568627715110779, green: 0.5921568870544434, blue: 0.9921568632125854, alpha: 1)))
                        .frame(width: 374, height: 55)
                    
                    //SAVE
                    Text("SAVE")
                        .font(.custom("HelveticaNeue Medium", size: 14))
                        .foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.95, blue: 0.98, alpha: 1)))
                        .tracking(0.7)
                        .multilineTextAlignment(.center)
                }
            })
            
        }
        .padding()
       
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}

struct DaySelect: View {
    var day: String
    
    var body: some View {
        ZStack {
            //Ellipse 31
            Circle()
                .fill(Color(#colorLiteral(red: 0.24705882370471954, green: 0.2549019753932953, blue: 0.30588236451148987, alpha: 1)))
                .frame(width: 40.7, height: 40.7)
            
            Text(day).font(.custom("HelveticaNeue Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
        }
    }
}
