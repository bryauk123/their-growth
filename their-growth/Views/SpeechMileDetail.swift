//
//  SpeechMileDetail.swift
//  their-growth
//
//  Created by Bryan Apodaca on 2/13/23.
//

import SwiftUI
import WebKit

struct SpeechMileDetail: View {
    var speechMilestone: SpeechMilestone
    
    var body: some View{
        VStack{
            Text(speechMilestone.title.uppercased())
                .font(.title)
                .bold()
            ScrollView{
                speechMilestone.detailImage
                
                Spacer()
                Text(speechMilestone.intro)
                    .font(.body)
                    .foregroundColor(.blue)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding(40)
                    .font(.system(size: 500))
                    .minimumScaleFactor(0.01)
                Spacer()
                
                
            }
            
            Text("Video")
                .font(.title)
            VideoView(videoID: speechMilestone.youtubeId)
                .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(12)
                .padding(.horizontal,24)
            Text("Forums")
                .font(.title)
            Link("Link To Forums", destination: URL(string: "\(speechMilestone.forumLink)")!)
        }
        
    }
}

struct SpeechMileDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpeechMileDetail(speechMilestone:speechMilestones[0])
    }
}
