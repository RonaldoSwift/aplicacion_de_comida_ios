//
//  WelcomeViewModel.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 12/08/22.
//

import Foundation
import SwiftUI

class WelcomeViewModel {
    
    var emojisCabezeras: Array<EmojisCabezera> = [EmojisCabezera.init(id: 0,
                                                                      image: "casa",
                                                                      color: Color("ColorVerdeJade")),
                                                  EmojisCabezera.init(id: 1,
                                                                      image: "love",
                                                                      color: Color("ColorPlomoDeTaps")),
                                                  EmojisCabezera.init(id: 2,
                                                                      image: "vaso",
                                                                      color: Color("ColorPlomoDeTaps")),
                                                  EmojisCabezera.init(id: 3,
                                                                      image: "coche",
                                                                      color: Color("ColorPlomoDeTaps"))
    ]
    
    var comidas: Array<Comida> = [Comida.init(id: 0,
                                              title: "Veg Salad",
                                              price: "$ 10.00",
                                              favorito: true,
                                              image: "veg_salada",
                                              description: Description.init(
                                                title: "Receta",
                                                description: "Prepara el aderezo con el vinagre, el aceite y la Salsa Soya MAGGI®. Acomoda las papas con los demás ingredientes(zanahoria, jamón, ejotes,chícharos )en un plato. Baña con el aderezo y agrega los cuadritos de jamón.",
                                                cantidad: 1,
                                                reciboItems: [
                                                    ReciboItem.init(
                                                        id: 0,
                                                        title: "Location",
                                                        description: "lorem ipsum dolor sit",
                                                        image: "map-pin"),
                                                    ReciboItem.init(
                                                        id: 1,
                                                        title: "Delivery time",
                                                        description: "5 minutos",
                                                        image: "reloj")
                                                ])),
                                  Comida.init(id: 1,
                                              title: "Roasted Chiken",
                                              price: "$ 10.00",
                                              favorito: false,
                                              image: "roasted_chiken",
                                              description: Description.init(
                                                title: "Receta",
                                                description: "Prepara el aderezo con el vinagre, el aceite y la Salsa Soya MAGGI®. Acomoda las papas con los demás ingredientes(zanahoria, jamón, ejotes,chícharos )en un plato. Baña con el aderezo y agrega los cuadritos de jamón.",
                                                cantidad: 2,
                                                reciboItems: [])),
                                  Comida.init(id: 2,
                                              title: "Rice & Stew",
                                              price: "$ 10.00",
                                              favorito: false,
                                              image: "rice_stew",
                                              description: Description.init(
                                                title: "Receta",
                                                description: "Prepara el aderezo con el vinagre, el aceite y la Salsa Soya MAGGI®. Acomoda las papas con los demás ingredientes(zanahoria, jamón, ejotes,chícharos )en un plato. Baña con el aderezo y agrega los cuadritos de jamón.",
                                                cantidad: 3, reciboItems: [])),
                                  Comida.init(id: 3,
                                              title: "Steak",
                                              price: "$ 10.00",
                                              favorito: true,
                                              image: "steak",
                                              description: Description.init(
                                                title: "Receta",
                                                description: "Prepara el aderezo con el vinagre, el aceite y la Salsa Soya MAGGI®. Acomoda las papas con los demás ingredientes(zanahoria, jamón, ejotes,chícharos )en un plato. Baña con el aderezo y agrega los cuadritos de jamón.",
                                                cantidad: 4, reciboItems: []))
    ]
    
}
