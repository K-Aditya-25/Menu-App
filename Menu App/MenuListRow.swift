//
//  MenuListRow.swift
//  Menu App
//
//  Created by Aditya Kharbanda on 02/07/24.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50, height: 50)
                .cornerRadius(10)
            
            Text(item.name)
            
            Spacer()
            
            HStack{
                Image(systemName: "indianrupeesign")
                Text("\(String(format: "%.2f", item.price*83.44))")
            }
        }
        .listRowSeparator(.hidden) //Note how this modifier is after the HStack, that defines a single row of a list, and not after the list itself!
        
        //Try this
        .background(Color(.white)
            .opacity(0.5)
            .cornerRadius(10))
        
        //Then try this
        .listRowBackground(Color(.brown)
            .opacity(0.1)
            .cornerRadius(10))
    }
    }


#Preview {
    MenuListRow(item: MenuItem(name: "TestItem", price: 0.00, imageName: "avocado-maki"))
}
