//
//  HomeView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/11/21.
//

import SwiftUI

struct HomeView: View {
    let date = Date().formatDate()
    
    var body: some View {
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
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                        
                        Image("luna9")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 95, height: 95)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(.trailing)
                        
                    }
                    .padding(.top, 0)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                    
                    Text("Today is:")
                        .font(.custom("Manrope Medium", size: 22))
                        .fontWeight(.bold)
                        .tracking(-1.2)
                        .frame(width: 200, alignment: .leading)
                        .padding(.leading)
                    
                    HStack {
                        DateView(weekday: "Sunday", short: "SU",checkDay: date)
                        DateView(weekday: "Monday", short: "M", checkDay: date)
                        DateView(weekday: "Tuesday", short: "T", checkDay: date)
                        DateView(weekday: "Wednesday", short: "W", checkDay: date)
                        DateView(weekday: "Thursday", short: "TH", checkDay: date)
                        DateView(weekday: "Friday", short: "F", checkDay: date)
                        DateView(weekday: "Saturday", short: "S", checkDay: date)
                    }
                    .padding(.leading, 30)
                    .padding(.bottom)
                    
                    NavigationLink(
                        destination: ReminderView(),
                        label: {
                            HStack {
                                //Upcoming events
                                Text("Add a New Reminder").font(.custom("Manrope Medium", size: 20)).tracking(-0.8)
                                
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
                                Text("Schedule a New Appointment").font(.custom("Manrope Medium", size: 20)).tracking(-0.8)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.forward.circle")
                                    .resizable()
                                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .padding(.bottom)
                        })
                        .padding(.top)


                    

                }
                .padding(.bottom, 95)
            
        }
        
    }
}

extension Date {
        func formatDate() -> String {
                let dateFormatter = DateFormatter()
            dateFormatter.setLocalizedDateFormatFromTemplate("EEEE")
            return dateFormatter.string(from: self)
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



