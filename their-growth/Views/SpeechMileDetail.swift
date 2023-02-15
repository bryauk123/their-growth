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
            speechMilestone.detailImage
            Spacer()
            Text(speechMilestone.intro)
                .font(.body)
                .foregroundColor(.blue)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .padding()
            Spacer()
            
        }
    }
}

struct SpeechMileDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpeechMileDetail(speechMilestone:speechMilestones[0])
    }
}
