//
//  ContentView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = "house"
    var body: some View {
        VStack(alignment: .leading) {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ReminderView()
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Reminders")
                    }
                AppointmentView()
                    .tabItem {
                        Image(systemName: "person.crop.circle.badge.questionmark")
                        Text("Appointments")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
