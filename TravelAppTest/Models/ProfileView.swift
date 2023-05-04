//
//  ProfileView.swift
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

struct ProfileView: View {
    
    @State var selected = 0
    
    @State var selection: String = "Up coming"
    
    
    var body: some View {
        ZStack {
            Color("BackGround")
                .ignoresSafeArea()
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .center){
                    topView()
                    
                    profile()
                    
                    Choose(selected: self.$selected)
                    
//                    if self.selected == 0 {
//                        upcomingView()
//                    }
                    
                    BrideView()
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



struct topView: View {
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
            
            Text("Profile")
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

struct profile: View {
    var body: some View {
        VStack(alignment: .center) {
             Image("7")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 180, height: 180)
            Text("Sukuna")
                .foregroundColor(Color("Dark Gray"))
                .font(.title3)
                .padding()
        }
    }
}


struct Choose: View {
    
    @Binding var selected : Int

    var body: some View {
        HStack {
            Button(action: {self.selected = 0}) {
                Text("Up coming")
                    .frame(width: 150)
                    .padding()
                    .background(self.selected == 0 ? Color("Orange") : Color.clear)
                    .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 0 ? .white : .secondary)

            Button(action: {self.selected = 1 }) {
                Text("Friends")
                    .frame(width: 150)
                    .padding()
                    .background(self.selected == 1 ? Color("Orange") : Color.clear)
                    .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 1 ? .white : .secondary)
        }
        .padding()
        .foregroundColor(.secondary)
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .background(.white)
        .cornerRadius(30)
        .padding(.horizontal)
    }
}

struct BrideView: View {
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
                    
                    HStack {
                        Image("pin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 18, height: 18)
                        Text("Hunza")
                            .font(.system(size: 12))
                        Spacer()
                        
                        Image("pin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 18, height: 18)
                        HStack(alignment: .bottom, spacing: 0) {
                            Text("18.35")
                                .font(.system(size: 18))
                            Text("km")
                                .font(.system(size: 12))
                        }
                        
                        
                    }
                }
                
                Rectangle()
                    .frame(width: 40, height: 90, alignment: .topTrailing)
                    .foregroundColor(Color("Orange"))
                    .padding()
            }
        }
        .padding()
        
        HStack {
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 120)
                    .foregroundColor(.white)
                .cornerRadius(20)
                
                HStack(spacing: 5) {
                    VStack(alignment: .leading, spacing: 10) {

                        Text("Suspension brig")
                            .font(.system(size: 17))
                            .foregroundColor(Color("Dark Gray"))

                        Text("Did you want enjoy your life, join us for next trip for price of nature.Did you want enjoy your life, join us for next trip for price of nature....")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Dark Gray"))
                        
                    }
                    .padding()
                    Rectangle()
                        .frame(width: 40, height: 90)
                        .foregroundColor(Color("Orange"))
                        .padding()
                }
            }
            
            Button(action: {}, label: {
                Text("Delete")
                    .foregroundColor(Color("Orange"))
//                    .fontWeight(.bold)
                    .frame(width: 80,height: 120)
                    .background(Color("Baby Orange"))
                    .cornerRadius(10)
                    .padding(.horizontal)
            })
        }
        .padding(.vertical, 0)
    }
}

//struct upcomingView : View {
//    var body: some View {
//        ZStack {
//            Color("BackGround")
//                .ignoresSafeArea()
//            ScrollView (.vertical, showsIndicators: false) {
//                VStack (alignment: .center){
//                    Text("UP view")
//                }
//            }
//        }
//    }
//}
