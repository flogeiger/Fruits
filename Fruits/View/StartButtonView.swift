//
//  StartButtonView.swift
//  Fruits
//
//  Created by Florian Geiger on 14.03.25.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        })
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
