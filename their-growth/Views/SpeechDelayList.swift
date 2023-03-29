//
//  SpeechDelayList.swift
//  their-growth
//
//  Created by Bryan Apodaca on 2/7/23.
//

import SwiftUI

struct SpeechDelayList: View {
    var body: some View {
        NavigationView{
            List(speechMilestones, id: \.title){ speechMilestone in
                NavigationLink{
                    SpeechMileDetail(speechMilestone:speechMilestone)
                }label:{
                    SpeechMileRow(speechMilestone:speechMilestone)
                }
                
            }
            .navigationTitle("Speech Milestones")
            .font(.largeTitle)
            .bold()
        }
       
        
        
    }
    
}

struct SpeechDelayList_Previews: PreviewProvider {
    static var previews: some View {
        SpeechDelayList()
    }
}
