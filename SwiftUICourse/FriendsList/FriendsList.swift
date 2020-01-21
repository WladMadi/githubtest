//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Владислав Мади on 07.11.2019.
//  Copyright © 2019 Влад Мади. All rights reserved.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationView{
        List(userResponse) { user in
            Cell(user: user)
        }
        .navigationBarTitle(Text("Friends"))

    }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
