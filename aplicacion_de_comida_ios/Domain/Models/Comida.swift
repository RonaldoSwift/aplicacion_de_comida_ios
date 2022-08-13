//
//  Comida.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 10/08/22.
//

import Foundation
import SwiftUI

struct Comida: Identifiable{
    let id: Int
    let title: String
    let price: String
    let favorito: Bool
    let image: String
    let description: Description
}

struct Description {
    let title: String
    let description: String
    let cantidad: Int
    let reciboItems: Array<ReciboItem> 
}

struct ReciboItem : Identifiable{
    let id: Int
    let title: String
    let description: String
    let image: String
}

