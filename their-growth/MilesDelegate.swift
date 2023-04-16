//
//  MilesDelegate.swift
//  their-growth
//
//  Created by Bryan Apodaca on 4/15/23.
//

import Foundation
import UIKit

// As a personal preference, I tend to put third-party library imports after the
// first-party iOS ones just so I know who’s responsible for what.
import Firebase
import FirebaseCore
class MilesDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
