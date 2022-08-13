//
//  ComidasPantallaView.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 9/08/22.
//

import SwiftUI

struct ComidasPantallaView: View {
    
    let welcomeViewModel: WelcomeViewModel = WelcomeViewModel.init()
    
    
    let columnas = [
        GridItem(.fixed(182)),
        GridItem(.fixed(182))
    ]
    
    var body: some View {
        ZStack{
            VStack(){
                PrimeraCabezera()
                SegundaCabezera()
                
                HStack(spacing: 45){
                    ForEach(welcomeViewModel.emojisCabezeras, id: \.id){ emojiscabezera in
                        EmojiTab(image: emojiscabezera.image,
                                 color: emojiscabezera.color)
                    }
                }
                
                ScrollView{
                    LazyVGrid(
                        columns: columnas
                    ) {
                        ForEach(welcomeViewModel.comidas, id: \.id) { comida in
                            NavigationLink {
                                ComidaDetalleView(comidaSeleccionada: comida)
                            } label: {
                                ComidaCelda(
                                    comida: comida)
                            }
                            .isDetailLink(false)
                        }
                    }
                }
                
                ParteBaja()
                
                
            }
            .padding(EdgeInsets.init(top: 0, leading: 30, bottom: 0, trailing: 30))
        }
        .background(Color("ColorPlomoFondo"))
    }
    
    private func PrimeraCabezera() -> some View{
        return HStack{
            VStack{
                Text("Work Place ")
                    .font(.custom("Poppins-Medium", size: 24))
                
            }
            Image("flechaAbajo")
                .resizable()
                .frame(width: 14, height: 10, alignment: .center)
            Spacer()
        }
    }
    
    private func SegundaCabezera() -> some View {
        return HStack{
            Text("choose your delicius meal")
                .font(.custom("Poppins-Regular", size: 14))
            Spacer()
        }
    }
    
    private func EmojiTab(image: String, color: Color) -> some View {
        return  Button {
        } label: {
            ZStack{
                Image(image)
                    .resizable()
                    .foregroundColor(color)
                    .frame(width: 25, height: 25, alignment: .center)
            }
            .frame(width: 53, height: 53, alignment: .center)
        }
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(color, lineWidth: 2)
        )
    }
    
    private func ComidaCelda(comida: Comida) -> some View {
        return ZStack{
            VStack{
                HStack{
                    Image(systemName: "circle.circle")
                        .foregroundColor(Color("ColorVerdeJade"))
                    Spacer()
                    
                    if(comida.favorito == true){
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color("ColorRojoDeTaps"))
                    } else{
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color("ColorPlomoDeTaps"))
                    }
                }
                
                Image(comida.image)
                    .resizable()
                    .clipShape(Circle())
                
                Text(comida.title)
                    .font(.custom("Poppins-SemiBold", size: 12))
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Text(comida.price)
                        .foregroundColor(Color("ColorVerdeJade"))
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(Color("ColorVerdeJade"))
                }
            }
            .padding()
            
        }
        .cornerRadius(30)
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color("ColorPlomoDeTaps"), lineWidth: 1)
        )
        .frame(height: 250, alignment: .center)
        .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
    }
    
    private func ParteBaja() -> some View {
        return HStack{
            Text("2 Items")
                .foregroundColor(Color.white)
            Spacer()
            Text("$ 27.00")
                .foregroundColor(Color.white)
        }
        .padding()
        .background(Color("ColorVerdeJade"))
        .cornerRadius(10)
        .padding()
    }
}

struct ComidasPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        ComidasPantallaView()
    }
}
