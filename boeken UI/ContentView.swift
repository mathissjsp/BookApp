//
//  ContentView.swift
//  boeken UI
//
//  Created by mathis goffin on 25/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            home().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            Text("library").tabItem {
                Image(systemName: "books.vertical.fill")
                Text("Library")
            }
            
            Text("store").tabItem {
                Image(systemName: "bag.fill")
                Text("Book store")
            }
            
            Text("audio").tabItem {
                Image(systemName: "bag.fill")
                Text("Audiobooks")
            }
            
            search().tabItem {
                Image(systemName: "magnifyingglass")
                Text("search")
            }
        }
    }
}

struct search: View {
    @State var zoeken = ""
    var body: some View {
        VStack{
            HStack{
                Text("Search").font(.system(.largeTitle, design: .serif, weight: .bold))
                Spacer()
                
            }.padding()
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Books & Audiobooks", text: $zoeken)
                    .padding(.vertical, 1)
                    .background(Color.clear)
                
                Image(systemName: "mic.fill")
                    .foregroundColor(.gray)
                
            }
            .padding(6)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            Spacer()
            
            
            
            List {
                Section(header: Text("Trending")
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundColor(.black)
                    .bold()
                ) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("gratis")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("will packer")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("susan morrison")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("the lexington letter")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("the body keeps the score")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("never split the difference")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("how to win friends & influence people")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("the 48 laws of power")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("if she knew")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("the you you are")
                    }
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Learn more about search results > ").font(.subheadline).foregroundColor(.gray)
                        })
                        Spacer()
                    }.padding()
                }
            }
            .listStyle(.plain)
            .padding()
            
            
        }
    }
}


struct home: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("stone island").font(.system(.largeTitle, design: .serif, weight: .bold))
                    Spacer()
                }.padding()
            }
            
            VStack{
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        Image("stoniezwart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                        
                        Image("stoniegrijs")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                        
                        Image("stoniezwart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                        
                        Image("stoniegrijs")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                    }
                    .padding()
                    Spacer()
                }
            }
        }
        
    }
}




#Preview {
    ContentView()
}
