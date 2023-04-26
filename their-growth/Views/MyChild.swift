//
//  MyChild.swift
//  their-growth
//
//  Created by Bryan Apodaca on 3/29/23.
//

import SwiftUI
import PhotosUI

struct MyChild: View {
    @State var selectedItems: [PhotosPickerItem] = []
    @State var data: Data?
    //@State var newChild: Child
    @State var childName = ""
    @State var childAge: Int = 0
    @State private var birthDate = Date.now
    @State private var showingAlert = true
    @State var showProfile: Bool = false
    //@State var capturedImage: UIImage

    var body: some View {
        NavigationView{
            VStack{
                if let data = data, let uiimage = UIImage(data:data){
                    Image(uiImage: uiimage)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 250, height:250)
                    
                }
                Spacer()
                
                
                PhotosPicker(selection: $selectedItems,
                             maxSelectionCount: 1,
                             matching: .images){
                    Text("Upload your child's picture!")
                    
                }
                             .onChange(of: selectedItems){
                                 newValue in guard let item = selectedItems.first
                                                    
                                 else{
                                     return
                                 }
                                 item.loadTransferable(type: Data.self){
                                     result in switch result{
                                     case.success(let data):
                                         if let data = data{
                                             self.data = data
                                         }else{
                                             print("Image did not load")
                                         }
                                     case.failure(let failure):
                                         fatalError("\(failure)")
                                     }
                                 }
                             }
                /*
                NavigationLink(destination: ChildProfile(name: $childName, age: $childAge),isActive: $showProfile){
                    EmptyView()
                }*/
                TextField("Enter Child's Name", text: $childName, onCommit:{
                    self.showProfile = true
                })
                TextField("Enter Child's Age", value: $childAge, formatter: NumberFormatter())
                
                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                    Text("Enter Birth Date")
                }
                
                NavigationLink("Submit"){
                    ChildProfile(name: $childName, age: $childAge)
                }
                .foregroundColor(.black)
                .frame(width: 220, height: 40)
                .background(Color.blue.opacity(0.75))
                .cornerRadius(10)
                
            }
        }
    }
}
    
    
    
    struct MyChild_Previews: PreviewProvider {
        static var previews: some View {
            MyChild()
        }
    }

