//
//  ListOfArt3.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 15/01/1445 AH.
//

import SwiftUI

struct ListOfArt3: View {
    var body: some View {
        
        List {
            Section(header: Text("Other tasks")) {
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Row 1")
                })
                
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Row 1")
                })
                
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Row 1")
                })
                
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Row 1")
                })
                
                
            }
        }
    }
}
struct ListOfArt3_Previews: PreviewProvider {
    static var previews: some View {
        ListOfArt3()
    }
}
