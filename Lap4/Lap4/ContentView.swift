//
//  ContentView.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 15/01/1445 AH.
//

import SwiftUI
struct ContentView: View {
    
    
    var body: some View {
        
        NavigationStack{
            FlowerList()
                .scrollContentBackground(.hidden)
                .background {
                    Image("1")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
