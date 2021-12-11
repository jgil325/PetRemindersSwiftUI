//
//  ContentView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
        NavigationView {
            VStack(alignment: .leading) {
                //Hi Goutham 👋
                Text("Hi Jacob 👋").font(.custom("Manrope Light", size: 17)).tracking(-0.68)
                    .padding(.leading)
                
                HStack {
                    //How is Luna doing today?
                    Text("How is Luna doing today?")
                        .font(.custom("Manrope Medium", size: 30))
                        .tracking(-1.2)
                        .frame(width: 200, alignment: .leading)
                    
                    Spacer()
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .trailing)
                        .padding(.trailing)
                        
                }
                .frame(width: .infinity)
                .padding()
                
                NavigationLink(
                    destination: ReminderView(),
                    label: {
                        HStack {
                            //Upcoming events
                            Text("Add a new Reminder").font(.custom("Manrope Medium", size: 20)).tracking(-0.8)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.forward.circle")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                    })

            Text("Your Pictures")
                .fontWeight(.bold)
                .font(.title2)
                .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    PhotoCards(image: "luna2")
                    PhotoCards(image: "luna3")
                    PhotoCards(image: "luna1")
                    PhotoCards(image: "luna4")
                    PhotoCards(image: "luna5")
                    PhotoCards(image: "luna6")
                    PhotoCards(image: "luna7")
                    PhotoCards(image: "luna8")
                    PhotoCards(image: "luna9")
                    PhotoCards(image: "luna10")
                }
                .shadow(radius: 15)
            }
            .frame(height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
                NavigationLink(
                    destination: AppointmentView(),
                    label: {
                        HStack {
                            //Upcoming events
                            Text("Schedule a new Appointment").font(.custom("Manrope Medium", size: 20)).tracking(-0.8)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.forward.circle")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                    })
            
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
