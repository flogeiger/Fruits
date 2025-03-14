//
//  OnboardingView.swift
//  Fruits
//
//  Created by Florian Geiger on 14.03.25.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        TabView{
            ForEach(0..<5){
                item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView()
}
