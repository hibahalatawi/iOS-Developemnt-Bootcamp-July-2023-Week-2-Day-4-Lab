//
//  FlowerDetailsView.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 16/01/1445 AH.
//

import SwiftUI

struct FlowerDetailsView: View {
    
    let flower: Flower
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            TabView {
                ForEach(flower.images, id: \.self) { i in
                    Image(i)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
        }
        .ignoresSafeArea()
    }
}

