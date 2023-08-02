//
//  Flower.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 15/01/1445 AH.
//


import SwiftUI

struct Flower: Identifiable {
    let id = UUID()
    let name : String
    let images : [String]
    let color : Color
    
}

let flowers:Array<Flower> = [
    Flower(name: "Orchid", images: ["o1", "o2","o3"] , color:.pink),
    Flower(name: "Rose", images: ["r1","r2","r3"] , color:.red),
    Flower(name: "Jasmine", images: ["j1","j2","j3"] , color:.white),
]
