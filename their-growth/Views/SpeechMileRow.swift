//
//  SpeechMileRow.swift
//  their-growth
//
//  Created by Bryan Apodaca on 2/13/23.
//

import SwiftUI

struct SpeechMileRow: View {
    var speechMilestone: SpeechMilestone
    var body: some View {
        HStack {
            speechMilestone.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(speechMilestone.ageGroup)
            Spacer()
        }
    }
}

struct SpeechMileRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SpeechMileRow(speechMilestone: speechMilestones[0])
            SpeechMileRow(speechMilestone: speechMilestones[1])
        }
        .previewLayout(.fixed(width:300,height:70))
    }
        
}
