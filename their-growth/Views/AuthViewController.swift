//
//  AuthViewController.swift
//  their-growth
//
//  Created by Bryan Apodaca on 4/15/23.
//


import SwiftUI
import UIKit

import FirebaseAuthUI

struct AuthViewController: UIViewControllerRepresentable {
    var authUI: FUIAuth

    func makeUIViewController(context: Context) -> UINavigationController {
        // We choose to fail loudly here—if we don’t get a view controller successfully,
        // then something is wrong with our overall configuration and we won’t want to
        // continue anyway.
        return authUI.authViewController()
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // We don’t do any updates so we leave this blank.
    }
}
