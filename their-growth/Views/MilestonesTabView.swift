//
//  MilestonesTabView.swift
//  their-growth
//
//  Created by Bryan Apodaca on 3/29/23.
//

import SwiftUI

struct MilestonesTabView: View {
    var body: some View {
        TabView{
            SpeechDelayList()
                .tabItem{
                    Label("Speech",systemImage: "waveform.circle")
                }
            MotorskillsListView()
                .tabItem{
                    Label("Motorskills", systemImage: "figure.run")
                }
            MyChild()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
        }
        .onAppear {
            // correct the transparency bug for Tab bars
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            // correct the transparency bug for Navigation bars
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        }
    }
}

struct MilestonesTabView_Previews: PreviewProvider {
    static var previews: some View {
        MilestonesTabView()
    }
}
