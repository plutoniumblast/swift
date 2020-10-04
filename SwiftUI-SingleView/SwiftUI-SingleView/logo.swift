//
//  logo.swift
//  SwiftUI-SingleView
//
//  Created by Manav Seksaria on 05/10/20.
//  Copyright © 2020 Nukes Foundation. All rights reserved.
//

import SwiftUI

struct logo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 300, height: 300)
            .padding(1)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
//            .clipShape(RoundedRectangle(cornerRadius:40,
//            style: .continuous))
//            .overlay(RoundedRectangle(cornerRadius:40,
//            style: .continuous).stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct logo_Previews: PreviewProvider {
    static var previews: some View {
        logo()
    }
}
