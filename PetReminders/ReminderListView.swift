//
//  ReminderListView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/10/21.
//

import SwiftUI

struct ReminderListView: View {
    @State var reminderList = [MyReminder?]()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ReminderListView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderListView()
    }
}
