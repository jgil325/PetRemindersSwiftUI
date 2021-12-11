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
    @State private var reminderName: String = ""
    
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
            
                DatePicker("", selection: $newReminder)
                    .labelsHidden()
                    .datePickerStyle(WheelDatePickerStyle())

            Text("Give this reminder a name")
                .font(.custom("HelveticaNeue Bold", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0.25, green: 0.25, blue: 0.31, alpha: 1)))
            
            TextField(
                "Reminder",
                text: $reminderName
            )
            .padding()
            
            
            Button(action: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])  {
                    success, error in
                    if success {
                        print("Authorization Granted")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                    
                    let content = UNMutableNotificationContent()
                    content.title = reminderName
                    content.subtitle = "From: PetReminder"
                    content.body = "Your pet needs you!"
                    content.sound = UNNotificationSound.default
                    
                    let dateComponents = Calendar.current.dateComponents([.day, .hour, .minute], from: newReminder)
                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
                    let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request)
                    
                    newReminder = Date()
                    reminderName = ""
                }
            }, label: {
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

