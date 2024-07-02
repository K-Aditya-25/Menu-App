//
//  ContentView.swift
//  Menu App
//
//  Created by Aditya Kharbanda on 02/07/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menu_items: [MenuItem] = [MenuItem]()
    var dataservice = Data()
    
    var body: some View {
        
        List(menu_items){item in
            
            MenuListRow(item: item)
            
            
        }
        //remove the lines that separate each row
        .listStyle(.plain)
        //dynamically load data
        .onAppear(perform: {
            menu_items = dataservice.getData()
        })
    }
}
#Preview {
    MenuView()
}
