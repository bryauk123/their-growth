//
//  ChildProfile.swift
//  their-growth
//
//  Created by Bryan Apodaca on 4/19/23.
//

import SwiftUI

struct ChildProfile: View {
    @Binding var name: String
    var body: some View {
        Text(self.name)
    }
}

struct ChildProfile_Previews: PreviewProvider {
    @State static var name: String = ""
    static var previews: some View {
        ChildProfile(name: $name)
    }
}
