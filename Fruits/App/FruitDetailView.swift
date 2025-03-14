//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Florian Geiger on 14.03.25.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit : Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20){
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn mor about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                            
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
