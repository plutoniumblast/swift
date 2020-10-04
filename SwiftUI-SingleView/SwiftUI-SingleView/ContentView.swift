//
//  ContentView.swift
//  SwiftUI-SingleView
//
//  Created by Manav Seksaria on 05/10/20.
//  Copyright © 2020 Nukes Foundation. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                VStack(alignment: .leading) {
                Text("☢ Newton").font(.title).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                Text("Newton's Lists").font(.subheadline).foregroundColor(Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 1.0))
                }
                Spacer()
                Text("Clocks Here").font(.subheadline).foregroundColor(.black)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
