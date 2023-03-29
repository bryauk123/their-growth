//
//  MilestonesList.swift
//  their-growth
//
//  Created by Bryan Apodaca on 3/8/23.
//

import SwiftUI

struct MilestonesList: View {
    var milestones = ["Speech","Motorskills","Growth"]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(self.milestones, id: \.self){
                    item in Text(item)
                    
                        NavigationLink(destination: SpeechDelayList()){
                            EmptyView()
                        }
                    
                }
            }.navigationTitle("Milestones")
        }
        
    }
}

struct MilestonesList_Previews: PreviewProvider {
    static var previews: some View {
        MilestonesList()
    }
}
