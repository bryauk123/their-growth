//
//  MotorskillsListView.swift
//  their-growth
//
//  Created by Bryan Apodaca on 2/15/23.
//

import SwiftUI

struct MotorskillsListView: View {
    var body: some View {
        NavigationView{
            List(speechMilestones, id: \.title){ speechMilestone in
                NavigationLink{
                    MotorMileDetail(speechMilestone:speechMilestone)
                }label:{
                    SpeechMileRow(speechMilestone:speechMilestone)
                }
                
            }
            .navigationTitle("Motor Skills Milestones")
            .font(.largeTitle)
            .bold()
        }
        
        
    }
    
}

struct MotorskillsListView_Previews: PreviewProvider {
    static var previews: some View {
        MotorskillsListView()
    }
}
