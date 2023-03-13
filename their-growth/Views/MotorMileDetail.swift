//
//  MotorMileDetail.swift
//  their-growth
//
//  Created by Bryan Apodaca on 3/8/23.
//

import SwiftUI

struct MotorMileDetail: View {
    var speechMilestone: SpeechMilestone
    
    var body: some View {
        ScrollView{
                VStack(alignment: .leading){
                    speechMilestone.motorImage
                    Spacer()
                    Text(speechMilestone.motorIntro)
                        .font(.body)
                        .foregroundColor(.blue)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                        .padding(40)
                        .font(.system(size: 500))
                        .minimumScaleFactor(0.01)
                    Spacer()
                    
                }
            
        }
    }
}

struct MotorMileDetail_Previews: PreviewProvider {
    static var previews: some View {
        MotorMileDetail(speechMilestone:speechMilestones[0])
    }
}
