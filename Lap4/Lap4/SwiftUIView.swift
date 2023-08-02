//
//  SwiftUIView.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 15/01/1445 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image("Image").resizable()
        }.frame(maxWidth: 200 , maxHeight: 100)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
