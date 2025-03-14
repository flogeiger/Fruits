//
//  FruitCardView.swift
//  Fruits
//
//  Created by Florian Geiger on 14.03.25.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    @State private var isAnimationg: Bool = false
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack (spacing: 20){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimationg ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimationg = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
