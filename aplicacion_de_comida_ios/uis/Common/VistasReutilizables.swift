//
//  VistasReutilizables.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 12/08/22.
//

import Foundation
import SwiftUI


func ParteBaja() -> some View {
    return HStack{
        Text("2 Items")
            .foregroundColor(Color.white)
        Spacer()
        Text("$ 27.00")
            .foregroundColor(Color.white)
    }
    .padding()
    .background(RoundedCornersView(color: Color("ColorVerdeJade"), tl: 0, tr: 0, bl: 100, br: 100))
    .cornerRadius(10)
    .padding()
}
