//
//  Cell.swift
//  SwiftUICourse
//
//  Created by Владислав Мади on 08.11.2019.
//  Copyright © 2019 Влад Мади. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    var user: UserResponse
    
    var body: some View {
        VStack(spacing: 16.0){
            TopView(user: user)
            Text(user.text)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
        }
        .padding(.horizontal)
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
