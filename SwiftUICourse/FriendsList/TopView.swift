//
//  TopView.swift
//  SwiftUICourse
//
//  Created by Владислав Мади on 07.11.2019.
//  Copyright © 2019 Влад Мади. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var user: UserResponse
    
    var body: some View {
        HStack(spacing: 8.0) {
            Image(user.profileImage)
            .resizable()
                .frame(width: 70.0, height: 70.0)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0) {
                Text(user.name)
                    .font(.title)
                    .fontWeight(.light)
                
                HStack {
                    Text(user.email)
                        .font(.subheadline)
                    Spacer()
                    Image("like_PNG14")
                        .resizable()
                        .frame(width: 20.0, height: 20.0)
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[0])
    }
}
