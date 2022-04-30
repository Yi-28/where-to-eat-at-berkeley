//
//  CartView.swift
//  What to eat?
//
//  Created by Yi Z on 4/24/22.
//  Copyright © 2022 Christian Privitelli. All rights reserved.
//

import Foundation
import SwiftUI

struct CartView: View {
    @State private var showDetails = false
    var randomPlace = "Random Place"
    var address = "Address"
    var price = 11.0
    var order = 1
    var number = "######"
    var description = "Noodles"
    var tax = 1.0
    var total = 12.0
    
    var body: some View {

        NavigationView{
            VStack{
                Text(randomPlace).frame(alignment: .center).padding(.top, 10)
                Text(address).frame(alignment: .center)
                Text(number).frame(alignment: .center)
                Text("Order #" + String(order)).frame(alignment: .topLeading).padding(20)
                    HStack{
                        Text(description).padding(.trailing, 150)
                        Text("$ " + String(price))
                    }.padding(.bottom, 120)
                    HStack{
                        Text("Sub-Total").padding(.trailing, 150)
                        Text( "$ " + String(price))
                    }
                    
                    HStack{
                        Text("Tax   ").padding(.trailing, 140)
                        Text(" $   " + String(tax)).padding(.leading, 40)
                    }
                   
//                $total = $price + $tax
                Text("TOTAL:  $" + String(total)).padding(10)
                    
                Button("Checkout") {
                    showDetails.toggle()
                }.frame(width: 200, height: 40, alignment: Alignment.center)
                    .font(.system(size: 25))
                    .foregroundColor(Color.black)
                    .background(Color.init(Color.RGBColorSpace.sRGB, red: 0.7, green: 0.85, blue: 0.82))

            }.background(Rectangle().frame(width: 350, height: 460)
                            .foregroundColor(.white).border(.black))
            
        }
        .frame(width: 360, height: 900)
        .navigationBarTitle("Order")
    }
    

}

struct CartView_Preview: PreviewProvider{
    static var previews: some View {
        CartView()
    }
}

