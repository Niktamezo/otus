//
//  ContentView.swift
//  otusone
//
//  Created by Никита Падалко on 22.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            DetailScreen(tabSelection: $tabSelection)
                .tag(0)
                .tabItem {
                    HStack {
                        Text("DetailScreen")
                        Image(systemName: "star")
                        Text("Dashboard")
                    }
                }
            ListScreen()
                .tag(1)
                .tabItem {
                    Image(systemName: "person")
                    Text("ListScreen")
                }
            ModalScreen()
                .tag(2)
                .tabItem {
                    Text("ModalScreen")
                    Image(systemName: "keyboard")
                }
        }
    }
}

#Preview {
    ContentView()
}
