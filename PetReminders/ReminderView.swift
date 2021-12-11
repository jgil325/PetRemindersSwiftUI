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
                    //Rectangle 3
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(#colorLiteral(red: 0.3607843220233917, green: 0.40784314274787903, blue: 1, alpha: 1)))
                        .frame(width: 295, height: 50)
                        .shadow(color: Color(#colorLiteral(red: 0.3803921639919281, green: 0.42352941632270813, blue: 1, alpha: 0.30000001192092896)), radius: 60, x: 8, y: 6)
                    
                    //Pay and Book
                    Text("Save")
                        .font(.custom("Manrope ExtraBold", size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
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

