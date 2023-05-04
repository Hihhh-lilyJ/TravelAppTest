//
//  MessageView.swift
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

struct MessageView: View {
    
    @State var selected = 0
    
    @State var selection: String = "Chat"
    
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            Color("BackGround")
                .ignoresSafeArea()
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    
                    SearchBarView(search: $search)
                    
                    chatbarView(selected: $selected)
                    
                    if self.selected == 12 {
                        FriendsView()
                    }
                    
                }
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}

struct SearchBarView: View {
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

struct chatbarView: View {
    
    @Binding var selected : Int
    
    var body: some View {
        HStack {
            Button(action: {self.selected = 11}) {
                Text("Chat")
                    .font(.system(size: 20))
//                    .frame(width: 100)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(self.selected == 11 ? Color("Orange") : Color.clear)
                    .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 11 ? .white : .secondary)
            
            Button(action: {self.selected = 12}) {
                Text("Friends")
                    .font(.system(size: 20))
//                    .frame(width: 100)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(self.selected == 12 ? Color("Orange") : Color.clear)
                    .clipShape(Capsule())
            }
            
            .foregroundColor(self.selected == 12 ? .white : .secondary)
            
            Button(action: {self.selected = 13}) {
                Text("Call")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity)
//                    .frame(width: 100)
                    .padding()
                    .background(self.selected == 13 ? Color("Orange") : Color.clear)
                    .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 13 ? .white : .secondary)
        }
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(.white)
            .cornerRadius(30)
            .padding(.horizontal)
    }
}

struct FriendsView : View {
    var body: some View {
        ZStack {
//            Color(.gray)
            Color("Background")
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Active")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Dark Gray"))
                            .padding()
                        
                        ChatpeopleView()
                        
                        Text("Messages")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Dark Gray"))
                            .padding()
                        
                        
                        ForEach(0..<10) {
                            index in
                            
                            VStack {
                                HStack {
                                    Image("1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 70, height: 70)
                                        .clipShape(Circle())
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Gojo")
                                            .font(.system(size: 18))
                                            .foregroundColor(Color("Dark Gray"))
                                        
                                        Text("give me chance")
                                            .font(.system(size: 12))
                                            .foregroundColor(.secondary)
                                        
                                    }
                                    Spacer()
                                    VStack (alignment: .leading, spacing: 10){
                                        Text("Today")
                                            .foregroundColor(Color("Dark Gray"))
                                            .font(.system(size: 12))
                                        
                                        Text("8:23 am")
                                            .font(.system(size: 8))
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding()
                            }
                        }
                        Divider()
                    }
                }
            }
        }
    }
}


struct ChatpeopleView: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20) {
                
                ForEach(0..<10) {
                    index in
                    
                    VStack {
                        Image("5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                        
                        Text("Sukuna")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding()
        }
    }
}
