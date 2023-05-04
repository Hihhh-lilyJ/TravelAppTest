//
//  HomeView.swift
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


struct HomeView: View {
    
    
    @State private var search: String = ""
    
//    @State var selected = 0
    
    
    var body: some View {
        ZStack {
            Color("BackGround")
                .ignoresSafeArea()
            NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .leading){
                    SearchAndScanView(search: $search)
                    
                    Text("Adventure")
                        .foregroundColor(Color("Dark Gray"))
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding()
                    
                    
                    AdventureView()
                    
                    selectLocationView()
                    
                    LocationView()
                    
                    Text("Agencies")
                        .foregroundColor(Color("Dark Gray"))
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding()
                }
            }
        }
            VStack {
                
                Spacer()
                
//                BottombarItem()

//                if self.selected == 10 {
//                    HomeView()
//                }
//                if self.selected == 20 {
//                    ProfileView()
//                }

//                Spacer()
//                    BottomNavBarView(selected: $selected)
//                BottomNavBarView()
                
                }
            }
        }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct SearchAndScanView: View {
    @Binding var search: String
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, 8)
                TextField("Search", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .cornerRadius(10.0)
            .padding(.trailing, 8)
            
            Button(action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(RadialGradient(colors: [Color("Orange"), Color("Light Orange")], center: .topLeading, startRadius: 70, endRadius: 20))
                    .cornerRadius(10)
            }
            
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(RadialGradient(colors: [Color("Orange"), Color("Light Orange")], center: .topLeading, startRadius: 70, endRadius: 20))
                    .cornerRadius(10.0)
            }
            
        }
        .padding(.horizontal)
    }
}

struct AdventureView: View {
    var body: some View {
        
        HStack {
            Image("image1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            Spacer()
            
            Image("image2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            Spacer()
            
            Image("image3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            Spacer()
            
            Image("image4")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}

struct selectLocationView : View {
    var body: some View {
        HStack {
            Image("pin")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .foregroundColor(Color("Dark Gray"))
                .padding(.trailing, 1)
                .padding(.leading)
            Text("Select Location")
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
        .padding()
    }
}

struct LocationView: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
                
                    HStack(spacing: 20) {
                            
                            ForEach(0..<3) {
                                index in
                                
                            Image("image5")
                            .resizable()
                            .frame(width: 220, height: 350)
                            .background(.gray)
                            .cornerRadius(10)
                        }
                    }
            .padding(.horizontal)
        }
    }
}


//struct BottomNavBarView : View {
//
//    @Binding var selected : Int
//
//    var body: some View {
//
//        HStack (spacing: 20){
//
//            NavigationLink(destination: {HomeView()}) {
//                Image(systemName: "house.fill")
//                    .frame(width: 55, height: 50)
//                    .font(.system(size: 27))
//            }
//            .foregroundColor(self.selected == 10 ? Color("Orange") : Color("Baby Orange"))
//
//            Spacer()
//
//            NavigationLink(destination: {ProfileView()}) {
//                Image(systemName: "person")
//                    .frame(width: 55, height: 50)
//                    .font(.system(size: 27))
//            }
//            .foregroundColor(self.selected == 20 ? Color("Orange") : Color("Baby Orange"))
//
//            Spacer()
//
//            NavigationLink(destination: {MessageView()}) {
//                Image(systemName: "ellipsis.message")
//                    .frame(width: 55, height: 50)
//                    .font(.system(size: 27))
//            }
//            .foregroundColor(self.selected == 30 ? Color("Orange") : Color("Baby Orange"))
//
//            Spacer()
//
//            NavigationLink(destination: {CalendarView()}) {
//                Image(systemName: "square.grid.2x2")
//                    .frame(width: 55, height: 50)
//                    .font(.system(size: 27))
//            }
//            .foregroundColor(self.selected == 40 ? Color("Orange") : Color("Baby Orange"))
//
//            Spacer()
//        }
//        .padding()
//
//
//            .background(.white)
//            .clipShape(Capsule())
//            .padding(.horizontal)
//            .shadow(color: Color.gray.opacity(0.15), radius: 8, x: 2, y: 6)
//    }
//}
