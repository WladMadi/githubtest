//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Владислав Мади on 08.11.2019.
//  Copyright © 2019 Влад Мади. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductsResponse]] {
        .init(grouping: materialResponse, by: {$0.category.rawValue})
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(self.categories.keys.sorted().identified(by: \.self)) { key in
                    Text(key)
                }
            }
            .navigationBarTitle(Text("Homepage"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
