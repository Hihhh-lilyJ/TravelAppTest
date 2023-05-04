//
//  CalendarView.swift
//  TravelAppTest
//
//  Created by MacBook Pro on 19/04/2023.
//

import SwiftUI

//extension View {
//    func dismissKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//}

struct CalendarView: View {
    var body: some View {
        ZStack {
            Color("BackGround")
                .ignoresSafeArea()
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .leading){
                    
                    topBarView()
                    
                    SuspensionBridgeView()
                    
                    BridgeView()
                    
                    MapView()
                    
                    LocationModelView()
                    
                }
            }
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

struct topBarView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(RadialGradient(colors: [Color("Orange"),Color("Light Orange")], center:.topLeading, startRadius: 70, endRadius: 20))
                    .cornerRadius(10)
                }
            
            Spacer()
            
            Text("Place details")
                .foregroundColor(Color("Brown"))
                .font(.title2)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(RadialGradient(colors: [Color("Orange"),Color("Light Orange")], center:.topLeading, startRadius: 70, endRadius: 20))
                    .cornerRadius(10)
                }
        }
        .padding()
    }
}

struct SuspensionBridgeView : View {
    var body: some View {
            HStack {
                Image("pin")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color("Dark Gray"))
                    .padding(.trailing, 1)
                    .padding(.leading)
                Text("Suspension brig")
                    .foregroundColor(Color("Dark Gray"))
                    .padding(.trailing, 50)
                Button(action: {}) {
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color("Dark Gray"))
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .padding()
                        .cornerRadius(10.0)
                   }
                }
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct BridgeView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 150, alignment: .center)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            HStack(spacing: 1) {
                Image("image6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 120)
                    .cornerRadius(10)
                .padding()
                
                VStack(alignment: .leading, spacing: 10) {

                    Text("Suspension Bridge")
                        .font(.system(size: 17))
                        .foregroundColor(Color("Dark Gray"))

                    Text("Did you want enjoy your life, join us for next trip for price of nature.Did you want enjoy your life, join us for next trip for price of nature....")
                        .font(.system(size: 12))
                        .foregroundColor(Color("Dark Gray"))
                }
                
                Rectangle()
                    .frame(width: 40, height: 90, alignment: .topTrailing)
                    .foregroundColor(Color("Orange"))
                    .padding()
                
            }
        }
        .padding()
    }
}

struct MapView: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 350)
            .cornerRadius(20)
            .padding(.horizontal)
    }
}

struct LocationModelView : View {
    var body: some View {
        
        HStack {
            
            Spacer()
            
            VStack {
                Image("hotel")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                .clipShape(Circle())
                
                Text("Hotel")
                .font(.system(size: 15))
                .foregroundColor(Color("Dark Gray"))

            }
            
            Spacer()
            
            VStack {
                Image("restaurant")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                .clipShape(Circle())
                
                Text("Restaurant")
                .font(.system(size: 15))
                .foregroundColor(Color("Dark Gray"))
            }
            
            Spacer()
            
            VStack {
                Image("flight")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                .clipShape(Circle())
                
                Text("Flight")
                .font(.system(size: 15))
                .foregroundColor(Color("Dark Gray"))

            }
            
            Spacer()
            
            VStack {
                Image("add")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                .clipShape(Circle())
                
                Text("+Add")
                .font(.system(size: 15))
                .foregroundColor(Color("Dark Gray"))
            }
            
            Spacer()
            
        }
    }
}

