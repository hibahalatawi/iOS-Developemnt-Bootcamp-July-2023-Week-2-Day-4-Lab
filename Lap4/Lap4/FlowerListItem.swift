//
//  NNN.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 16/01/1445 AH.
//

import SwiftUI

struct FlowerListItem: View {
    
    let flower: Flower
    
    var body: some View {
        
        // the row of the list
        HStack {
            Image(flower.images[0])
                .resizable()
                .frame(width: 44, height: 44, alignment: .leading)
                .clipShape(Circle())
            Text(flower.name)
            Spacer()
        }
        
    }
}

