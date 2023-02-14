//
//  SpeechMileDetail.swift
//  their-growth
//
//  Created by Bryan Apodaca on 2/13/23.
//

import SwiftUI

struct SpeechMileDetail: View {
    var speechMilestone: SpeechMilestone
    
    var body: some View{
        VStack{
            Text(speechMilestone.title)
            Text(speechMilestone.intro)
            speechMilestone.image
        }
    }
}

struct SpeechMileDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpeechMileDetail(speechMilestone:speechMilestones[0])
    }
}
