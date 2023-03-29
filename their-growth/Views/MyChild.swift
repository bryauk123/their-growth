//
//  MyChild.swift
//  their-growth
//
//  Created by Bryan Apodaca on 3/29/23.
//

import SwiftUI

struct MyChild: View {
    @State private var childName = ""
    @State private var childAge = ""
    
    @State private var parentName = ""
    @State private var zip = ""
    
    
    var body: some View {
        VStack{
            Text("My Child")
                .font(.title)
                .bold()
            Form{
                Section{
                    TextField("Name", text:$childName)
                    TextField("Age In Months", text:$childAge)
                }
            }
            Text("Parent Info")
                .font(.title)
                .bold()
            Form{
                Section{
                    TextField("Name", text:$parentName)
                    TextField("Zip Code", text:$zip)
                }
            }
        }
    }
}

struct MyChild_Previews: PreviewProvider {
    static var previews: some View {
        MyChild()
    }
}
