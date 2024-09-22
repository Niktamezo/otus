//
//  DetailView.swift
//  otusone
//
//  Created by Никита Падалко on 22.09.2024.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var title: String

     var btnBack : some View { Button(action: {
         self.presentationMode.wrappedValue.dismiss()
         }) {
             HStack {
             Image("ic_back")
                 .aspectRatio(contentMode: .fit)
                 .foregroundColor(.black)
                 Text("Go back")
             }
         }
     }
     
     var body: some View {
             List {
                 Text(title)
         }
     }
}
#Preview {
    DetailView(title: "detail")
}
