//
//  ContentView.swift
//  MyTabBar
//
//  Created by David Razmadze on 10/24/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      
      FirstView()
        .tabItem {
          Image(systemName: "tray")
          Text("1st")
        }
      
      SecondView()
        .tabItem {
          Image(systemName: "house")
          Text("2nd")
        }
      
      ThirdView()
        .tabItem {
          Image(systemName: "doc")
          Text("3rd")
        }
      
    }
    .accentColor(Color.red)
    .onAppear {
      UITabBar.appearance().backgroundColor = UIColor.black
      
      UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct FirstView: View {
  
  var body: some View {
    
    ZStack {
      
      Color.red.ignoresSafeArea(edges: .top)
      
      Text("First View")
      
    }
    
  }
  
}

struct SecondView: View {
  
  var body: some View {
    
    ZStack {
      
      Color.blue.ignoresSafeArea(edges: .top)
      
      Text("Second View")
      
    }
    
  }
  
}

struct ThirdView: View {
  
  var body: some View {
    
    ZStack {
      
      Color.purple.ignoresSafeArea(edges: .top)
      
      Text("Third View")
      
    }
    
  }
  
}
