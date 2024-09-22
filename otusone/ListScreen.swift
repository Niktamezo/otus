//
//  ListScreen.swift
//  otusone
//
//  Created by Никита Падалко on 22.09.2024.
//

import SwiftUI

struct ListScreen: View {
    var list = ["First", "Second", "Third", "Fourth"]
    
    var body: some View {
        NavigationView {
            List (list, id: \.self) {item in
                NavigationLink(
                    destination: DetailView(title: item)
                , label: {
                    HStack {
                        Text(item).fontWeight(.semibold).lineLimit(2).minimumScaleFactor(0.5)
                    }
                    })
                }
        }.navigationBarTitle("text").accentColor(.black).foregroundColor(.black)
       
    }
}

#Preview {
    ListScreen()
}
