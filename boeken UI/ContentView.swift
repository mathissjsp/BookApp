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
                
                ScrollView{
                    
                    VStack{
                        HStack{
                            Text("Home").font(.system(.largeTitle, design: .serif, weight: .bold))
                            Spacer()
                            Image(systemName: "heart")
                            Image(systemName: "person")
                        }.padding()
                        
                        
                        HStack{
                            Text("Top Pics").font(.system(.headline, design: .serif, weight: .bold))
                            Spacer()
                        }.padding(.leading,15)
                        
                        HStack{
                            VStack{
                                HStack{
                                    Image("boek1").resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width * 0.4, height: 200)
                                        .cornerRadius(15)
                                        .shadow(radius: 5)
                                    
                                }
                                VStack(alignment: .leading){
                                    Text("books you might like").fontWeight(.bold).padding(.top )
                                    Text("Suggestions based on your reading activity.").font(.caption2).foregroundStyle(.gray)
                                }
                                
                            }.padding().frame(width: 250).background(.white).cornerRadius(15)
                            Spacer()
                        }.padding().shadow(radius: 5)
                        
                        
                    }.padding().background(LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.2)]),
                        startPoint: .top,
                        endPoint: .bottom
                    ))
                    
                    
                    
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Computing & Internet").font(.system(.headline, design: .serif, weight: .bold))
                                    Image(systemName: "greaterthan").foregroundColor(.gray)
                                }
                                Text("Explore best-selling books in this genre").font(.caption2).foregroundStyle(.gray)
                            }
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 35) {
                                Image("boek2")
                                
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 150)
                                    .shadow(radius: 5)
                                
                                Image("boek3")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 150)
                                    .shadow(radius: 5)
                                
                                Image("boek4")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 150)
                                    .shadow(radius: 5)
                                
                                Image("boek5")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 150)
                                    .shadow(radius: 5)
                                
                                Image("boek3")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 150)
                                    .shadow(radius: 5)
                                Image("boek4")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 150)
                                    .shadow(radius: 5)
                            }
                            .padding()
                            Spacer()
                        }
                    }.padding().background(LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.2)]),
                        startPoint: .top,
                        endPoint: .bottom
                    ))
                    
                    VStack{
                        HStack{
                            VStack{
                                HStack{
                                    Text("previous").font(.system(.headline, design: .serif, weight: .bold))
                                    Image(systemName: "greaterthan").foregroundColor(.gray)
                                }
                            }
                            Spacer()
                        }
                        
                        HStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    
                                    
                                    HStack(spacing: 40) {
                                        HStack {
                                            Image("boek2")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 70, height: 90)
                                                .shadow(radius: 5)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Develop in Swift \nFundamentals").fontWeight(.bold)
                                                Text("Apple Education")
                                                Text("Book · 15%").foregroundColor(.gray)
                                            }
                                        }
                                        
                                        HStack {
                                            Image(systemName: "cloud")
                                            Image(systemName: "ellipsis")
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    
                                    
                                    HStack(spacing: 40) {
                                        HStack {
                                            Image("boek3")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 70, height: 90)
                                                .shadow(radius: 5)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Swift UI Essentials").fontWeight(.bold)
                                                Text("Apple Education")
                                                Text("Book · 45%").foregroundColor(.gray)
                                            }
                                        }
                                        
                                        HStack {
                                            Image(systemName: "cloud")
                                            Image(systemName: "ellipsis")
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    
                                    
                                    HStack(spacing: 40) {
                                        HStack {
                                            Image("boek4")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 70, height: 90)
                                                .shadow(radius: 5)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Advanced Swift").fontWeight(.bold)
                                                Text("Ray Wenderlich")
                                                Text("Book · 60%").foregroundColor(.gray)
                                            }
                                        }
                                        
                                        HStack {
                                            Image(systemName: "cloud")
                                            Image(systemName: "ellipsis")
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    
                                }
                                .padding()
                            }
                        }
                        
                    }.padding().background(LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.2)]),
                        startPoint: .top,
                        endPoint: .bottom
                    ))
                }
            }
        }
        
    }
}




#Preview {
    ContentView()
}
