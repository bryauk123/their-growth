//
//  SpeechMilestone.swift
//  their-growth
//
//  Created by Bryan Apodaca on 2/13/23.
//

import Foundation
import SwiftUI


struct SpeechMilestone: Hashable, Codable {

    var title: String
    var ageGroup: String
    var intro: String
    var motorIntro: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var detailImageName: String
    var detailImage: Image{
        Image(detailImageName)
    }
    
    private var motorImageName: String
    var motorImage: Image{
        Image(motorImageName)
    }
}
