//
//  AppointmentView.swift
//  PetReminders
//
//  Created by Jacob Gil on 12/11/21.
//

import SwiftUI
import SafariServices

struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}

struct AppointmentView: View {
    @State private var showSafari: Bool = false
    
    var body: some View {
        VStack {
            Text("Book an Appointment")
                .font(.custom("Manrope Medium", size: 25))
                .padding(.bottom, 50)
            
            Text("Jones Bridge Animal Hospital")
                .font(.custom("Manrope Medium", size: 22))
                .fontWeight(.black)
            
                ZStack {
                    //Rectangle 12
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color(#colorLiteral(red: 0.003921568859368563, green: 0.7529411911964417, blue: 0.47843137383461, alpha: 1)), style: StrokeStyle(lineWidth: 0.699999988079071, lineCap: .round, dash: [0,0]))
                        
                        RoundedRectangle(cornerRadius: 15)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7799999713897705)))

                        
                    }
                    .frame(width: 138, height: 49)
                    
                    HStack {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Hours: 10am - 4pm")
                            .font(.custom("Manrope Regular", size: 15))
                            
                    }
                }
            ZStack {
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                    .fill(Color(#colorLiteral(red: 0.003921568859368563, green: 0.7529411911964417, blue: 0.47843137383461, alpha: 1)))
                    RoundedRectangle(cornerRadius: 30)
                    .strokeBorder(Color(#colorLiteral(red: 0.003921568859368563, green: 0.7529411911964417, blue: 0.47843137383461, alpha: 1)), style: StrokeStyle(lineWidth: 1, lineCap: .round, dash: [0,0]))
                }
                .frame(width: 270, height: 220)
                
                Image("hosp")
                    .cornerRadius(30)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 24)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                RoundedRectangle(cornerRadius: 24)
                .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)), style: StrokeStyle(lineWidth: 1, lineCap: .round, dash: [15,15]))
                
                HStack {
                    Text("General Check-Up fee").font(.custom("Manrope Regular", size: 15))

                    Text("$ 200").font(.custom("Manrope Light", size: 24))
                    
                }
            }
            .frame(width: 295, height: 74)
            
            ZStack {
                //Rectangle 3
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color(#colorLiteral(red: 0.3607843220233917, green: 0.40784314274787903, blue: 1, alpha: 1)))
                    .frame(width: 295, height: 50)
                    .shadow(color: Color(#colorLiteral(red: 0.3803921639919281, green: 0.42352941632270813, blue: 1, alpha: 0.30000001192092896)), radius: 60, x: 8, y: 6)
                
                //Pay and Book
                Text("Book Now")
                    .font(.custom("Manrope ExtraBold", size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

            }
            .padding()
            .onTapGesture {
                showSafari.toggle()
            }
            .fullScreenCover(isPresented: $showSafari, content: {
                SFSafariViewWrapper(url: URL(string: "https://connect.allydvm.com/practice/jones_bridge/appointment_request")!)
            })
            
        }
    }
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}
