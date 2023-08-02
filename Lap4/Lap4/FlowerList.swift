//
//  ListOfArt1.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 15/01/1445 AH.
//

import SwiftUI

struct FlowerList: View {
    
    @State private var searchText: String = ""
    @State private var filteredItems: [Flower] = []
    
    var body: some View {
        NavigationStack{
            VStack{
              //
                List(searchText.isEmpty ? flowers : filteredItems) { flower in
                    NavigationLink(destination: FlowerDetailsView(flower: flower)) {
                        FlowerListItem(flower: flower)
                    }
                }
                .searchable(text: $searchText)
                .onChange(of: searchText) { newValue in
                    filteredItems = flowers.filter { flower in
                        flower.name.lowercased().contains(searchText.lowercased())
                    }
                }
                
                
                //registration butten
                NavigationLink(destination: {
                    RegisterationFormView()
                }, label: {
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .bold()
                        .foregroundColor(.white)
                        .background {
                            Color.blue
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                })
                
                
                
                
            }
            .navigationTitle("Flowers")
            
        }
        
    }
}


struct ListOfArt1_Previews: PreviewProvider {
    static var previews: some View {
        FlowerList()
    }
}


