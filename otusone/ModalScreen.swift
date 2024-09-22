//
//  ModalScreen.swift
//  otusone
//
//  Created by Никита Падалко on 22.09.2024.
//

import SwiftUI

struct ModalScreen: View {
    
    @State private var showModal = false
    
    @State private var isShowingPhoto = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text("UIViewRepresentable view:").foregroundColor(.black)    .multilineTextAlignment(.center)
                ActivityIndicator(style: .medium, isLoading: true)
            }.offset(y: -50)
            
            Spacer()
            
            Button(action: {
                showModal = true
            }) {
                Text("Open modal").foregroundColor(.black)
            }.sheet(isPresented: $showModal, content: {
                Text("Modal screen")
            })
        }
    }
}

#Preview {
    ModalScreen()
}
