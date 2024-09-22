//
//  DetailScreen.swift
//  otusone
//
//  Created by Никита Падалко on 22.09.2024.
//

import SwiftUI

struct DetailScreen: View {
    
    @Binding var tabSelection: Int
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Screen 1")
                Button(action: {
                    self.tabSelection = 2
                }) {
                    Text("Change to tab 2")
                        .foregroundColor(.black).padding(50)
                }
                
                NavigationLink(
                    destination: DetailView(title: "Second")
                    , label: {
                        HStack {
                            Text("Go to tab 2 subscreen").fontWeight(.semibold).foregroundColor(.black).lineLimit(2).minimumScaleFactor(0.5)
                        }
                    })
            }
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(tabSelection: .constant(0))
    }
}
