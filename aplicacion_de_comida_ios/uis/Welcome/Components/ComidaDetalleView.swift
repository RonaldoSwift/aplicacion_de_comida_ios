//
//  ComidaDetalleView.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 11/08/22.
//

import SwiftUI

struct ComidaDetalleView: View {
    
    let comidaSeleccionada: Comida
    
    var body: some View {
        ZStack{
            VStack{
                Image(comidaSeleccionada.image)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading){
                Spacer()
                HStack{
                    Text(comidaSeleccionada.title)
                        .font(.custom("Poppins-Mediun", size: 24))
                    
                    Image(systemName: "record.circle")
                        .foregroundColor(Color("ColorVerdeJade"))
                        .frame(width: 13.88, height: 15, alignment: .center)
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("-")
                            .frame(width: 22, height: 22, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color("ColorPlomoDeTaps"))
                            .cornerRadius(3)
                    }
                    Text(String(comidaSeleccionada.description.cantidad))
                        .frame(width: 47, height: 22, alignment: .center)
                        .background(Color("ColorGris"))
                        .cornerRadius(3)
                    
                    Button {
                        
                    } label: {
                        Text("+")
                            .frame(width: 22, height: 22, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color("ColorVerdeJade"))
                            .cornerRadius(3)
                        
                    }
                    
                }
                
                Text("$ 10.00")
                    .foregroundColor(Color("ColorVerdeJade"))
                    .font(.custom("Poppins-Bold", size: 18))
                
                Text(comidaSeleccionada.description.title)
                    .foregroundColor(Color.black)
                    .font(.custom("Poppins-SemiBold", size: 18))
                Text(comidaSeleccionada.description.description)
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color.black)
                
                ForEach(comidaSeleccionada.description.reciboItems, id: \.id){ reciboItem in
                    miniCelda(reciboItem: reciboItem)
                    
                }
                
                HStack{
                    Text("2 Items")
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-Regular", size: 14))
                    
                    Spacer()
                    Text("$ 27.00")
                        .foregroundColor(Color.white)
                }
                .padding()
                .background(Color("ColorVerdeJade"))
                .cornerRadius(10)
                .padding()
            }
            .padding()
        }
        .background(Color("ColorPlomoFondo"))
    }
    
    
    private func miniCelda(reciboItem: ReciboItem) -> some View{
        return HStack{
            ZStack{
                Image(reciboItem.image)
                    .frame(width: 18, height: 22, alignment: .center)
            }
            .frame(width: 53, height: 45, alignment: .center)
            .cornerRadius(8)
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("ColorPlomoDeTaps"), lineWidth: 2))
            VStack(alignment: .leading){
                Text(reciboItem.title)
                    .font(.custom("Poppins-SemiBold", size: 18))
                Text(reciboItem.description)
                    .font(.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color.black)
            }
        }
    }
    
}

struct ComidaDetalleView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaDetalleView(comidaSeleccionada:
                            Comida(
                                id: 0,
                                title: "",
                                price: "",
                                favorito: true,
                                image: "",
                                description: Description(title: "",
                                                         description: "",
                                                         cantidad: 0, reciboItems: [])))
    }
}
