//
//  ChildProfile.swift
//  their-growth
//
//  Created by Bryan Apodaca on 4/19/23.
//

import SwiftUI
import _PhotosUI_SwiftUI

struct ChildProfile: View {
    @Binding var name: String
    @Binding var age: Int
    //@Binding var profilePic: PhotosPickerItem
    //@State var selectedImageData: Data? = nil
    //@Binding var profilePic: UIImage
    var milestones = ["Friends","Specialists Near Me","Reccomendations"]
    var body: some View {
        NavigationView{
            VStack{
                Text("Hello, \(self.name)!")
                    .font(.title)
                Spacer()
                Text("Age: \(self.age) months")
                    .font(.title)
                //Image(uiImage: self.profilePic)
                
                NavigationLink("Go To Milestones"){
                    MilestonesTabView().navigationBarBackButtonHidden(true)
                }
                .foregroundColor(.black)
                .frame(width: 220, height: 40)
                .background(Color.blue.opacity(0.75))
                .cornerRadius(10)
                
                List{
                    ForEach(self.milestones, id: \.self){
                        item in Text(item)
                        
                    }
                }
                
            }
        }
    }
}

struct ChildProfile_Previews: PreviewProvider {
    @State static var name: String = ""
    @State static var age: Int = 0
    //@State static var profilePic: UIImage = profilePic
    static var previews: some View {
        ChildProfile(name: $name, age: $age)
    }
}
