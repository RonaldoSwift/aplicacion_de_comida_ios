//
//  WelcomePantallaView.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 9/08/22.
//

import SwiftUI

struct WelcomePantallaView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Image("plato_welcome")
                        .resizable()
                        .frame(width: 185, height: 197, alignment: .center)
                        .scaledToFit()
                    Text("Food Ordering App")
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-Bold", size: 30 ))
                        .padding()
                    
                    NavigationLink {
                        ComidasPantallaView()
                    } label: {
                        Text("Get a meal")
                            .padding()
                            .foregroundColor(Color.black)
                            .frame(width: 315, height: 51, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(100)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("ColorVerdeJade"))
        }
    }
}

struct WelcomePantallaView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePantallaView()
    }
}
