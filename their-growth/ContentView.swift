//
//  ContentView.swift
//  their-growth
//
//  Created by Bryan Apodaca on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Their Growth")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
