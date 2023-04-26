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
        VStack{
            Text(speechMilestone.title.uppercased())
                .font(.title)
                .bold()
            ScrollView{
                speechMilestone.motorImage
                Spacer()
                Text(speechMilestone.motorIntro)
                    .font(.body)
                    //.foregroundColor(.blue)
                    //.background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding(40)
                    .font(.system(size: 500))
                    .minimumScaleFactor(0.01)
                Spacer()
            }
            VideoView(videoID: speechMilestone.youtubeIdMotor)
                .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(12)
                .padding(.horizontal,24)
            Text("Forums")
                .font(.title)
            Link("Link To Forums", destination: URL(string: "\(speechMilestone.forumLinkMotor)")!)
        }
    }
}

struct MotorMileDetail_Previews: PreviewProvider {
    static var previews: some View {
        MotorMileDetail(speechMilestone:speechMilestones[0])
    }
}
